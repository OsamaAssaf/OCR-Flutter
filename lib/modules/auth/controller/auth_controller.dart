import 'package:start_up_workspace/resources/helpers/all_imports.dart';

class AuthController extends GetxController {
  AuthType authType = AuthType.login;

  void changeAuthType() {
    authType = authType == AuthType.login ? AuthType.signUp : AuthType.login;
    update();
  }

  Future<void> submit() async {
    Get.offAllNamed(Routes.navigationRoute);
  }
}
