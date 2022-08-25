import 'package:get/get.dart';
import 'package:getx_tutorial/bottomSheet.dart';
import 'package:getx_tutorial/pageShow.dart';
import 'package:getx_tutorial/snackbar.dart';

appRoutes() => [
  GetPage(
    name: '/home',
    page: () => const PageShow(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 200),
  ),
  GetPage(
    name: '/snackBarPage',
    page: () => SnackBarPage(),
    middlewares: [MyMiddelware()],
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 200),
  ),
  GetPage(
    name: '/bottomsheetPage',
    page: () => const BottomSheetPage(),
    middlewares: [MyMiddelware()],
    transition: Transition.leftToRightWithFade,
    transitionDuration: Duration(milliseconds: 200),
  ),
];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}