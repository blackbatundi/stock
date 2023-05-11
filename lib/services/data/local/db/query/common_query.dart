import 'package:cobiz/services/data/local/db/gen/app_db.dart';
import 'package:cobiz/services/data/local/db/utils.dart';
import 'package:cobiz/services/utils/utils.dart';
import 'package:drift/drift.dart';

class CommonQuery extends AppDb {
  CommonQuery._() {
    AppDb.singleton();
  }

  static CommonQuery singleton = CommonQuery._();

  Future<ResponseWithStatus> insertorUpdateAdress(
      {int? id,
      String? country,
      String? city,
      String? town,
      String? commune,
      String? quater,
      String? street,
      String? number}) async {
    if (id == null) {
      int addressId = await into(address).insert(
        AddressCompanion(
          country: Value(country!),
          city: Value(city),
          town: Value(town),
          commune: Value(commune),
          quater: Value(quater),
          street: Value(street),
          number: Value(number),
          version: Value(rowVerion()),
          createdAt: Value(DateTime.now()),
        ),
      );
      return ResponseWithStatus(
        statusCode: Statuscode.success,
        errorMessage: ResponseMessage.success,
        data: addressId,
      );
    } else {
      // We get first of all the last insterted address
      // after that we will inster update where change made and afect the last address info where there is no change
      Addres? response = await (select(address)
            ..where(
              (tbl) => tbl.id.equals(id),
            ))
          .getSingleOrNull();

      if (response != null) {
        final responseAdress =
            await (update(address)..where((tbl) => tbl.id.equals(id))).write(
          AddressCompanion(
            commune: Value(commune ?? response.commune),
            country: Value(country ?? response.country),
            city: Value(city ?? response.city),
            town: Value(town ?? response.town),
            quater: Value(quater ?? response.quater),
            street: Value(street ?? response.street),
            version: Value(response.version + 1),
            number: Value(number ?? response.number),
          ),
        );
        return ResponseWithStatus(
          statusCode: Statuscode.success,
          errorMessage: ResponseMessage.success,
          data: responseAdress,
        );
      } else {
        return ResponseWithStatus(
          statusCode: Statuscode.success,
          errorMessage: ResponseMessage.success,
        );
      }
    }
  }

  Future<int?> insertOrEditBank({
    int? id,
    String? bankName,
    String? accountName,
    String? accountNumber,
    String? codebank,
  }) async {
    int? bankid;

    if (id == null) {
      bankid = await into(bank).insert(BankCompanion(
        bankname: Value(bankName),
        accountNumber: Value(accountNumber),
        accountName: Value(accountName),
        code: Value(codebank),
        version: Value(rowVerion()),
        createdAt: Value(DateTime.now()),
      ));
      return bankid;
    } else {
      final bankdata =
          await (select(bank)..where((tbl) => tbl.id.equals(id))).getSingle();
      bankid = await (update(bank)..where((tbl) => tbl.id.equals(id)))
          .write(BankCompanion(
        bankname: Value(bankName ?? bankdata.bankname),
        accountName: Value(accountName ?? bankdata.accountName),
        accountNumber: Value(accountNumber ?? bankdata.accountNumber),
        code: Value(codebank ?? bankdata.code),
        version: Value(bankdata.version + 1),
      ));
      return bankid;
    }
  }

  Future<ResponseWithStatus> insertorUpdatephonenumber({
    int? id,
    String? code,
    String? number,
  }) async {
    int? phoneId;
    PhoneData? phoneData;
    if (id == null) {
      phoneData = await (select(phone)
            ..where((ph) => ph.number.equals(number) & ph.code.equals(code)))
          .getSingleOrNull();
      if (phoneData == null) {
        phoneId = await into(phone).insert(
          PhoneCompanion(
            code: Value(code),
            number: Value(number),
            version: const Value(1),
            createdAt: Value(DateTime.now()),
          ),
        );
        return ResponseWithStatus(statusCode: 201, data: phoneId);
      }
      throw Exception("This number exist");
    }

    phoneData = await (select(phone)..where((ph) => ph.id.equals(id)))
        .getSingleOrNull();
    phoneId = await (update(phone)
          ..where((tbl) => tbl.id.equals(phoneData?.id)))
        .write(PhoneCompanion(
      code: Value(code ?? phoneData?.code),
      number: Value(number ?? phoneData?.number),
      version: Value(phoneData!.version + 1),
    ));
    return ResponseWithStatus(
      statusCode: 201,
      data: phoneId,
    );
  }

  // common function for inserting all application contact
  insertOrUpdatecontact({
    int? contactId,
    String? email,
    String? internet,
    int? phoneId,
  }) async {
    int? contactidentifier;
    ContactData? contactData;

    if (contactId == null) {
      contactData = await (select(contact)
            ..where((tbl) => tbl.email.equals(email)))
          .getSingleOrNull();

      if (contactData == null) {
        contactidentifier = await into(contact).insert(ContactCompanion(
          email: Value(email!),
          internet: Value(internet!),
          phoneId: Value(phoneId),
          version: Value(rowVerion()),
          createdAt: Value(DateTime.now()),
        ));
        return ResponseWithStatus(
            statusCode: 200,
            errorMessage: 'insertion avec succes',
            data: contactidentifier);
      }

      return ResponseWithStatus(
          statusCode: 409, errorMessage: "Cet adress mail exist");
    }
    contactData = await (select(contact)
          ..where((tbl) => tbl.id.equals(contactId)))
        .getSingleOrNull();
    contactidentifier =
        await (update(contact)..where((tbl) => tbl.id.equals(contactId))).write(
      ContactCompanion(
        email: Value(email ?? contactData!.email),
        internet: Value(internet ?? contactData!.internet),
        phoneId: Value(phoneId ?? contactData!.phoneId),
        version: Value(contactData!.version + 1),
      ),
    );
    return ResponseWithStatus(
      statusCode: 200,
      errorMessage: 'mise à jours contact',
      data: contactidentifier,
    );
  }

  Future<ResponseWithStatus> getbank({required int bankid}) async {
    BankData responsedata = await (select(bank)
          ..where(((tbl) => tbl.id.equals(bankid))))
        .getSingle();
    return ResponseWithStatus(statusCode: 200, data: responsedata);
  }

  //get contact
  Future<ResponseWithStatus> getconact({required int enterpriseId}) async {
    final responsedata = await (select(enterprisecontact)
          ..where((tbl) => tbl.enterpriseId.equals(enterpriseId)))
        .getSingle();

    ContactData contactdata = await (select(contact)
          ..where(((tbl) => tbl.id.equals(responsedata.contactId))))
        .getSingle();
    return ResponseWithStatus(statusCode: 200, data: contactdata);
  }
//modifications

  insertImage({required String file}) async {
    int? fileid = await into(fileEnterprise).insert(FileEnterpriseCompanion(
      file: Value(file),
      createdAt: Value(DateTime.now()),
      version: Value(rowVerion()),
    ));
    return fileid;
  }

// this function is for insterting all the image in the enterprise
  insertOrUpdateImage({required String filePath, int? imageId}) async {
    FileEnterpriseData? filedata = await (select(fileEnterprise)
          ..where((tbl) => tbl.id.equals(imageId)))
        .getSingleOrNull();

    final fileid = filedata == null
        ? await into(fileEnterprise).insert(FileEnterpriseCompanion(
            file: Value(filePath),
            version: const Value(1),
          ))
        : await (update(fileEnterprise)
              ..where(
                (tbl) => tbl.id.equals(imageId),
              ))
            .write(
            FileEnterpriseCompanion(
                file: Value(filePath), version: Value(filedata.version + 1)),
          );
    return fileid;
  }

  updateEnterprisePhoto({
    required String file,
    required int enterpriseId,
  }) async {
    final supportdata = await (select(support)).get();
    final enterprisedata = await select(enterprise).getSingle();

    //insert if empty
    if (supportdata.isEmpty) {
      //insert image
      final fileid = await insertImage(file: file);

      //insert support
      int supportid = (await into(support).insert(SupportCompanion(
        imageId: Value(fileid),
        createdAt: Value(DateTime.now()),
        version: Value(rowVerion()),
      )));

      //update support id in enterprise
      await update(enterprise).write(EnterpriseCompanion(
          supportId: Value(supportid),
          version: Value(enterprisedata.version + 1)));

      return ResponseWithStatus(
          statusCode: Statuscode.success,
          errorMessage: "insertion image avec  success");
    } else {
      await insertOrUpdateImage(
          filePath: file, imageId: supportdata.first.imageId!);

      return ResponseWithStatus(
          statusCode: Statuscode.success,
          errorMessage: "mise en jours de l'image avec succes");
    }
  }

  //insertpermission
  insertpermission(
      {required String descriptionpermission,
      required String designationpermission,
      required int enterpriseId}) async {
    String permissionId = (await into(permission).insert(PermissionCompanion(
        description: Value(descriptionpermission),
        createdAt: Value(DateTime.now()),
        version: Value(rowVerion()),
        designation: Value(designationpermission)))) as String;
    return permissionId;
  }

  insertRole(
      {required String descriptionrole,
      required String designationrole,
      required int permissionId,
      required int enterpriseId,
      required int userid}) async {
    dynamic roleId = await into(role).insert(RoleCompanion(
        description: Value(descriptionrole),
        createdAt: Value(DateTime.now()),
        userId: Value(userid),
        version: Value(rowVerion()),
        designation: Value(designationrole)));
    return roleId;
  }

  getrole({required int userid}) async {
    final data = select(role)
        .join([innerJoin(permission, permission.id.equals(12))])
      ..where(role.userId.equals(userid));

    final responses = await data.get();
    return responses.map((e) {}).toList();
  }
}
