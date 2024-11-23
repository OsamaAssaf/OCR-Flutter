import 'package:ocr/resources/helpers/all_imports.dart';

class OcrScannerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OcrScannerController(),
    );
  }
}
