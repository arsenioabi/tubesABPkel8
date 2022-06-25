import 'package:kuylinary/core/database/box/user/user_box.dart';

class AuthUsecase {

  late UserBox userBox;

  setUser(UserBox value) => userBox = value;

  removeUser() => userBox = UserBox();
}

AuthUsecase authUsecase = AuthUsecase();