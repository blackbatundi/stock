import 'dart:io';

import 'package:cobiz/controller/bloc/event.dart';
import 'package:cobiz/controller/bloc/state.dart';
import 'package:cobiz/provider/product/model.dart';
import 'package:cobiz/services/data/local/db/query/common_query.dart';

import 'package:cobiz/services/data/local/db/query/enterprise_query.dart';
import 'package:cobiz/services/data/local/db/query/product_querry.dart';

import 'package:cobiz/services/utils/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../services/os_interaction/file_picker.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(INITIALSTATE()) {
    EnterpriseDB enterpriseDb = EnterpriseDB.singleton;
    CommonQuery commonQuery = CommonQuery.singleton;
    ProductQuery product = ProductQuery.singleton;
    /*
        User interaction part
        ====================
     */

    on<USERCHANGEMENU>((event, emit) {
      emit(SUCCESS(value: event.index));
    });

    on<PICKIMAGE>((event, emit) async {
      try {
        List<File>? result = await pickImages(false);
        emit(
          SUCCESS(value: result?[0]),
        );
      } catch (_) {
        emit(
          const ERROR(),
        );
      }
    });
    on<REMOVEONEIMAGE>((event, emit) {
      emit(
        const SUCCESS(),
      );
    });

    /*
        ENTERPRISE PART
        ==============
     */

    on<ADDOREDDITENTERPRISE>((event, emit) async {
      emit(const LOADING());
      try {
        enterpriseDb.createOrUpdateEnterprise(
          rccm: event.rccm,
          tax: event.impot,
          enterpriseName: event.designation,
          description: event.description,
          idnat: event.idNat,
          codeEnteprise: event.code,
        );

        emit(
          const SUCCESS(
            value:
                "Les informations de l'entreprise ont ete enregistree avec succes",
          ),
        );
      } catch (e) {
        emit(
          ERROR(
            dueTo: e.toString(),
          ),
        );
      }
    });

    // ==========================================================================================================================

    /*
        CONTACT PART
        ===========
     */
    on<ADDOREDITENTERPRISECONTACT>((event, emit) async {
      emit(const LOADING());

      try {
        ResponseWithStatus response;
        response = await commonQuery.insertorUpdatephonenumber(
            id: event.phoneId, code: event.code, number: event.number);
        int? instertedId = response.data;
        response = await commonQuery.insertOrUpdatecontact(
          contactId: event.contactId,
          email: event.email,
          phoneId: instertedId,
          internet: event.webSite,
        );
        if (event.contactId == null) {
          await enterpriseDb.insertEnterpriseContact(
            contctId: instertedId,
            enterpriseId: event.enterpriseId,
          );
        }
        enterpriseDb.getinteprise;
        emit(
          const SUCCESS(
            value: "Le contact de l'entreprise a ete enregistree avec succes",
          ),
        );
      } catch (e) {
        emit(ERROR(dueTo: e.toString()));
      }
    });

    /*
        ADDRESS PART
        ===========
     */

    on<ADDENTERPRISEADDRESS>((event, emit) async {
      emit(const LOADING());
      try {
        ResponseWithStatus response = await commonQuery.insertorUpdateAdress(
          id: event.addressId,
          city: event.city,
          commune: event.common,
          country: event.country,
          street: event.street,
          town: event.town,
          number: event.number,
          quater: event.quarter,
        );
        int? savedAddressId = response.data;

        if (event.addressId == null) {
          // if we did not send the address that means we are adding the first time the address
          await enterpriseDb.insertAddressEnterprise(
            enterpriseId: event.enterpriseId!,
            addressId: savedAddressId!,
          );
        }

        enterpriseDb.getinteprise;

        emit(const SUCCESS(
          value: "L'adresse de l'entreprise a ete enregistree avec succes",
        ));
      } on Exception catch (e) {
        emit(ERROR(dueTo: e.toString()));
      }
    });

/*
    BANK PART
*/

    on<ADDOREDITENTERPRISEBANK>((event, emit) async {
      emit(const LOADING());
      try {
        int? savedId = await commonQuery.insertOrEditBank(
          id: event.bankId,
          accountName: event.accountName,
          accountNumber: event.accountNumber,
          codebank: event.swiftCode,
          bankName: event.bankName,
        );

        if (event.bankId == null) {
          await enterpriseDb.insertEnterpriseBank(
              bankId: savedId, enterpriseId: event.enterpriseId);
        }

        enterpriseDb.getinteprise;
        emit(
          const SUCCESS(
            value:
                "Les informations de la banque de l'entreprise ont ete enregistree avec succes",
          ),
        );
      } catch (e) {
        emit(ERROR(dueTo: e.toString()));
      }
    });

    //===========================================================================================================================

    /*
        PRDUCT PART
     */

    on<ADDOREDITPRODUCT>(((event, emit) async {
      emit(const LOADING());
      try {
        for (int i = 0; i < event.items!.length; i++) {
          await product.insertOrUpdateGProduct(
            type: event.items![i].type,
            designation: event.items![i].designation,
            description: event.items![i].description,
            unity: event.items![i].unity,
            state: event.items![i].state,
            caracteristique: event.items![i].caracteristique,
            productId: event.items![i].productId,
            maximum: event.items![i].maximum,
            enterpriseId: event.enterpriseId,
            minimun: event.items![i].minimum,
            purchace: event.items![i].purchace,
            priceId: event.items![i].priceId,
            quantity: event.items![i].quantity,
          );
        }

        emit(
          const SUCCESS(
            value: "le produit a ete enreistre avec succes ",
          ),
        );
      } catch (e) {
        emit(ERROR(dueTo: e.toString()));
      }
    }));

//mise en stock
    on<SetStock>(
      (((event, emit) async {
        emit(const LOADING());
        try {
          for (SetStockmodel p in event.setProductStock) {
            if (p.quantity != null) {
              await product.addOrEditPrice(
                minimun: p.maximum,
                priceId: p.priceId,
                maximum: p.minimum,
              );
              await product.inStock(
                productId: p.productId,
                quantity: p.quantity,
              );
            }
          }
          emit(
            const SUCCESS(
              value: "mise en stock avec success",
            ),
          );
        } catch (e) {
          emit(ERROR(dueTo: e.toString()));
        }
      })),
    );
  }
}
