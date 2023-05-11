// ignore_for_file: constant_identifier_names
import 'package:cobiz/provider/user/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum PermissionState { GRANT, DENIED }

class Permission {
  static PermissionState isAllow(
      {required List<String>? userPermissions,
      required String? allowedPermission}) {
    PermissionState permission = PermissionState.DENIED;
    for (int i = 0; i < userPermissions!.length; i++) {
      if (userPermissions[i] == allowedPermission) {
        permission = PermissionState.GRANT;
        break;
      }
    }
    return permission;
  }

  static List<AppPermission> appPermissions(BuildContext context) => [
        // for product
        AppPermission(
          designation:
              AppLocalizations.of(context)!.permissionProductAddDesignation,
          description:
              AppLocalizations.of(context)!.permissionProductAddDescription,
          category: "product",
        ),
      ];
}
