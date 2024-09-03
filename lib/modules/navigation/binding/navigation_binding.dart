import 'package:start_up_workspace/resources/helpers/all_imports.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => NavigationController(),
    );
  }
}
