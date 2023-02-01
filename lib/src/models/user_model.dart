import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: "id")
  late int id;

  @JsonKey(name: "email")
  late String email;

  @JsonKey(name: "first_name")
  late String firstName;

  @JsonKey(name: "last_name")
  late String lastName;

  @JsonKey(name: "avatar")
  late String avatar;

  UserModel();

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}