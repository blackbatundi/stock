class Role {
  String? designation;
  String? description;
  String? createdAt;
  String? updatedAt;
  List<AppPermission>? permissions;

  Role(
      {this.designation,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.permissions});

  Role.fromJson(Map<String, dynamic> json) : permissions = [] {
    description = json['description'];
    designation = json['designation'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];

    if (json['permissions'] != null) {
      json['permissions'].forEach((p) {
        permissions!.add(AppPermission.fromJson(p));
      });
    }
  }
}

class AppPermission {
  String? designation;
  String? description;
  String? createdAt;
  String? updatedAt;
  String? category;
  AppPermission({
    this.designation,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.category,
  });
  AppPermission.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    designation = json['designation'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    category = json['category'];
  }
}
