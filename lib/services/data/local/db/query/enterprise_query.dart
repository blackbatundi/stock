import 'package:cobiz/provider/enterprise/model.dart';
import 'package:cobiz/services/data/local/db/gen/app_db.dart';
import 'package:cobiz/services/data/local/db/utils.dart';
import 'package:cobiz/services/utils/utils.dart';
import 'package:drift/drift.dart';

class EnterpriseDB extends AppDb {
  EnterpriseDB._()  {
    AppDb.singleton();
  }

 
  EnterpriseModel? enterpriseValue;
  static EnterpriseDB singleton = EnterpriseDB._();

  //this will be called everywhere there is needed of reference to an enterprise
  Future<int> getRefEnterpriseId() async {
    EnterpriseData enterpriseId = await select(enterprise).getSingle();
    return enterpriseId.id;
  }

  void createOrUpdateEnterprise({
    String? rccm,
    String? tax,
    String? enterpriseName,
    String? description,
    String? idnat,
    String? codeEnteprise,
  }) async {
    await select(enterprise)
        .getSingleOrNull()
        .then((EnterpriseData? data) async {
      data == null
          ? await into(enterprise).insert(
              EnterpriseCompanion(
                reason: Value(enterpriseName),
                rccm: Value(rccm),
                idnat: Value(idnat!),
                description: Value(description),
                codeEnterprise: Value(
                  codeEnteprise ?? Randoms.generateRandomString(6),
                ),
                tax: Value(tax),
                version: Value(rowVerion()),
                createdAt: Value(DateTime.now()),
              ),
            )
          : await update(enterprise).write(
              EnterpriseCompanion(
                reason: Value(enterpriseName ?? data.reason),
                rccm: Value(rccm ?? data.rccm),
                idnat: Value(idnat ?? data.idnat),
                description: Value(description ?? data.description),
                codeEnterprise: Value(
                  codeEnteprise ?? data.codeEnterprise,
                ),
                tax: Value(tax),
                version: Value(data.version + 1),
                createdAt: Value(DateTime.now()),
              ),
            );
    });

    getinteprise;
  }

  insertAddressEnterprise(
          {required int enterpriseId, required int addressId}) async =>
      await into(enterpriseaddress).insert(
        EnterpriseaddressCompanion(
          enterpriseId: Value(enterpriseId),
          addressId: Value(addressId),
          current: const Value(true),
          version: const Value(1),
        ),
      );

  Future<ResponseWithStatus> getEnterpriseAddress(enterpriseId) async {
    List<Enterpriseaddres> enterpriseAddresses =
        await (select(enterpriseaddress)
              ..where(
                (entA) => entA.enterpriseId.equals(enterpriseId),
              ))
            .get();

    List<Map<String, dynamic>> datas = [];

    for (Enterpriseaddres e in enterpriseAddresses) {
      Addres? addressData = await (select(address)
            ..where(
              (entA) => entA.id.equals(e.addressId),
            ))
          .getSingleOrNull();

      if (addressData != null) datas.add(addressData.toJson());
    }

    return ResponseWithStatus(
      statusCode: 200,
      // for the first version we accepte only one address per enterprise
      data: datas.isNotEmpty ? datas[0] : null,
    );
  }

  Future<int?> insertEnterpriseContact(
      {int? contctId, int? enterpriseId}) async {
    int? id = await into(enterprisecontact).insert(
      EnterprisecontactCompanion(
        enterpriseId: Value(enterpriseId),
        contactId: Value(contctId),
        current: const Value(true),
        version: const Value(1),
      ),
    );
    getinteprise;
    return id;
  }

  Future<ResponseWithStatus> getEnterpriseContacts(int enterpriseId) async {
    List<EnterprisecontactData> enterpriseContacts =
        await (select(enterprisecontact)
              ..where(
                (entA) => entA.enterpriseId.equals(enterpriseId),
              ))
            .get();

    List<Map<String, dynamic>> datas = [];

    for (EnterprisecontactData e in enterpriseContacts) {
      ContactData? contactData = await (select(contact)
            ..where(
              (entA) => entA.id.equals(e.contactId),
            ))
          .getSingleOrNull();

      if (contactData != null) {
        PhoneData? phoneDatas = await (select(phone)
              ..where(
                (ph) => ph.id.equals(contactData.phoneId),
              ))
            .getSingleOrNull();

        datas.add({
          "id": contactData.id,
          "email": contactData.email,
          "internet": contactData.internet,
          "phone": phoneDatas?.toJson(),
          "version": contactData.version,
          "cloudId": contactData.cloudId,
        });
      }
    }

    return ResponseWithStatus(
      statusCode: 200,
      // for the first version we accepte only one address per enterprise
      data: datas.isNotEmpty ? datas[0] : null,
    );
  }

  Future<int?> insertEnterpriseBank({int? bankId, int? enterpriseId}) async =>
      await (update(enterprise)
            ..where(
              (ent) => ent.id.equals(enterpriseId),
            ))
          .write(
        EnterpriseCompanion(
          bankId: Value(bankId),
        ),
      );

  Stream<EnterpriseModel>? get getinteprise async* {
    List<EnterpriseData>? enterpriseDatas = await (select(enterprise)).get();

    List<Enterpriseaddres>? enterpriseaddres = await (select(enterpriseaddress)
          ..where(
            (eA) => eA.enterpriseId
                .equals(enterpriseDatas.isEmpty ? null : enterpriseDatas[0].id),
          ))
        .get();

    Addres? enterpriseAddressData = await (select(address)
          ..where(
            (a) => a.id.equals(enterpriseaddres.isEmpty
                ? null
                : enterpriseaddres[0].addressId),
          ))
        .getSingleOrNull();

    List<EnterprisecontactData>? enterpriseContact =
        await (select(enterprisecontact)
              ..where(
                (eC) => eC.enterpriseId.equals(
                    enterpriseDatas.isEmpty ? null : enterpriseDatas[0].id),
              ))
            .get();

    ContactData? contactEnterprise = await (select(contact)
          ..where(
            (c) => c.id.equals(enterpriseContact.isEmpty
                ? null
                : enterpriseContact[0].contactId),
          ))
        .getSingleOrNull();

    final query = (select(enterprise)).join([
      leftOuterJoin(bank, bank.id.equalsExp(enterprise.bankId)),
      leftOuterJoin(address, address.id.equals(enterpriseAddressData?.id)),
      leftOuterJoin(contact, contact.id.equals(contactEnterprise?.id)),
      leftOuterJoin(phone, phone.id.equals(contactEnterprise?.phoneId))
    ]);

    yield* query.watchSingleOrNull().map((row) {
      return EnterpriseModel(
        enterpriseInfo: row?.readTableOrNull(enterprise),
        addres: row?.readTableOrNull(address),
        bank: row?.readTableOrNull(bank),
        contact: row?.readTableOrNull(contact),
        phone: row?.readTableOrNull(phone),
      );
    });
  }
}
