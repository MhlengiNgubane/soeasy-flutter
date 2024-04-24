import 'package:get/get.dart';

class PasswordCotroller extends GetxController {
  final RxBool _password = false.obs;

  bool get password => _password.value;

  set setPassword(bool newState) {
    _password.value = newState;
  }
}
