
class ApiModel {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  ApiModel({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory ApiModel.fromJson(Map<String, dynamic> json) => ApiModel(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );


}
