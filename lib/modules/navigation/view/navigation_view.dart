import 'package:ocr/resources/helpers/all_imports.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return UpgradeDialog(
      child: GetBuilder<NavigationController>(
        builder: (NavigationController controller) {
          return Scaffold(
            // body: controller.getPage(),
            body: Center(
              child: ScaleText('${controller.text}'),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Get.toNamed(Routes.ocrScannerRoute)!.then((value) {});
              },
            ),
          );
        },
      ),
    );
  }
}
