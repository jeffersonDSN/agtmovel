import 'package:agtmovel/src/model/authentication_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const json = {
  'authentications': [
    {
      'fristName': 'Jeff',
      'lastName': 'Pereira',
      'userName': 'jeff',
      'password': '123',
      'email': 'jefferson@i9.com.br'
    }
  ]
};

class AuthenticationRepository {
  Future<AuthenticationModel?> login(String userName, String password) {
    AuthenticationModel? authentication;

    (json['authentications'] as List).map((element) {
      if (element['userName'] == userName && element['password'] == password) {
        authentication = AuthenticationModel.fromJson(element);
      }
    }).toList();

    return Future(() => authentication);
  }
}

final authenticationRepositoryProvider =
    Provider((ref) => AuthenticationRepository());
