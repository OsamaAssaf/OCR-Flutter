import 'package:ocr/resources/helpers/all_imports.dart';

class OcrScannerView extends GetView<OcrScannerController> {
  const OcrScannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: localizations.ocrScanner,
        canBack: true,
      ),
      body: ScalableOCR(
        cameraSelection: 0,
        paintboxCustom: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 4.0
          ..color = const Color.fromARGB(153, 102, 160, 241),
        boxLeftOff: 4,
        boxBottomOff: 2.7,
        boxRightOff: 4,
        boxTopOff: 2.7,
        boxHeight: MediaQuery.of(context).size.height / 5,
        // getRawData: (value) {
        //   print('getRawData: $value');
        // },
        getScannedText: (value) {
          print('getScannedText: $value');
          final String scannedText = value.toString().trim().replaceAll(' ', '');

          String result = '';
          for (int i = 0; i < scannedText.length; i++) {
            final String char = scannedText[i];
            if (!controller.isNumeric(char)) {
              continue;
            }
            result = '$result$char';
          }
          print('result: $result');
          if (result.isEmpty) result;
          Get.back(result: result);
        },
      ),
    );
  }
}
