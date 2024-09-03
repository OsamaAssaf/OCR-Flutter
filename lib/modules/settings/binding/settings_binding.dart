import 'package:start_up_workspace/resources/helpers/all_imports.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SettingsController(),
    );
  }
}
