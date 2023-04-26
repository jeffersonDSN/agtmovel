// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed/authentication_model.freezed.dart';
part 'json_serializable_generator/authentication_model.g.dart';

@freezed
class AuthenticationModel with _$AuthenticationModel {
  const factory AuthenticationModel({
    required String fristName,
    required String lastName,
    required String userName,
    required String password,
    required String email,
  }) = _AuthenticationModel;

  factory AuthenticationModel.fromJson(Map<String, Object> json) =>
      _$AuthenticationModelFromJson(json);
}
