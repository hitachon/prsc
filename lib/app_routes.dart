import 'package:get/get.dart';

import 'homepage.dart';
import 'userlogin/login_sigup/login_controller.dart';
import 'userlogin/login_sigup/login_page.dart';
import 'userlogin/login_sigup/signup_page.dart';
import 'userlogin/login_sigup/singup_controller.dart';

class AppRoutes {
  static List<GetPage> routes() => [
        GetPage(
          name: '/',
          page: () => const LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/signup',
          page: () => const SignUpPage(),
          binding: SignUpBinding(),
        ),
        GetPage(name: '/GDChinh', page: () => HomePage()),
      ];
}
