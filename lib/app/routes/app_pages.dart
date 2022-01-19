import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:holerite_v2/app/views/home/home_page/home_page_bindings.dart';
import 'package:holerite_v2/app/views/home/home_page/home_page_page.dart';
import 'package:holerite_v2/app/views/login/login_page/login_page.dart';
import 'package:holerite_v2/app/views/login/login_page/login_page_bindings.dart';
import 'package:holerite_v2/app/views/splash/splash_page.dart';
import 'app_routes.dart';

class AppPages{
  static final routes = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: AppRoutes.LOGIN, 
      page: () => const LoginPage(),
      binding: LoginPageBindings()
    ),
    GetPage(
      name: AppRoutes.HOME, 
      page: () => const HomePage(),
      binding: HomePageBindings()
    ),
  ];
}