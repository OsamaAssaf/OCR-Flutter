import 'package:start_up_workspace/resources/helpers/all_imports.dart';

class ConnectionErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => ConnectionErrorController(),
    );
  }
}
