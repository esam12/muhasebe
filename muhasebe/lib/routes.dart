import 'package:get/get.dart';
import 'package:muhasebe/core/constant/routes.dart';
import 'package:muhasebe/main.dart';
import 'package:muhasebe/view/screens/home_screen.dart';
import 'package:muhasebe/view/screens/login_screen.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const SplashScreen()),
  GetPage(name: AppRoute.login, page: () => const LoginScreen()),
  GetPage(name: AppRoute.home, page: () => const HomeScreen()),
 // GetPage(name: AppRoute.depo, page: () => const DepoScreen()),
];
