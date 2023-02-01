import 'package:food_app/src/models/user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'single_user_response.g.dart';

@JsonSerializable()
class SingleUserResponse {
  @JsonKey(name: "data")
  late UserModel userModel;

  SingleUserResponse();

  factory SingleUserResponse.fromJson(Map<String, dynamic> json) => _$SingleUserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SingleUserResponseToJson(this);
}