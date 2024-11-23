class UserModel {
  int? id;
  String? name;

  UserModel({
    this.id,
    this.name,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': name,
    };
  }

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['username'];
  }
}
