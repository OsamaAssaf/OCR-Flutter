import 'package:start_up_workspace/resources/helpers/all_imports.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeController homeController = Get.put(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveDesign(
      mobile: UpgradeDialog(
        child: Scaffold(
          appBar: MainAppBar(
            title: localizations.home,
            hasDrawer: true,
          ),
          drawer: const DrawerHome(),
          body: const Center(
            child: Text('Home'),
          ),
        ),
      ),
      tablet: const UpgradeDialog(
        child: Scaffold(
          body: Center(
            child: Text('Home'),
          ),
        ),
      ),
    );
  }
}
