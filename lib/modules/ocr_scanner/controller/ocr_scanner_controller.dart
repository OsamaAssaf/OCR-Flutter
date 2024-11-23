import 'package:ocr/resources/helpers/all_imports.dart';

class OcrScannerController extends GetxController {
  String? scannedText;
  set setScannedText(String? value) {
    scannedText = value;
    update();
  }

  bool isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    return num.tryParse(s) != null;
  }
}
