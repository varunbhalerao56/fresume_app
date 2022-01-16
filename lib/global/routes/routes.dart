import 'package:fresume_app/main.dart';
import 'package:fresume_app/pages/form/view/form_layout_view.dart';
import 'package:fresume_app/pages/home/view/logged_home_view.dart';
import 'package:fresume_app/pages/unknown/unknown_route.dart';
import 'package:get/get.dart';

List<GetPage> getPages = [
  GetPage(name: '/', page: () => const AuthGate()),
  GetPage(name: '/resume', page: () => const ResumeEdit(null)),
  GetPage(name: '/home', page: () => const LoggedHomeAuthView()),
    GetPage(name: '/unkown', page: () => const UnknownRoute()),
  GetPage(name: '/resume/:resumeId', page: () => const ResumeEditWrapper()),
];
