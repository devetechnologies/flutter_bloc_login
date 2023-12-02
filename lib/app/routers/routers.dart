import 'package:flutter/widgets.dart';

import '../../login/views/home/home.dart';
import '../../login/views/login/login_page.dart';
import '../bloc/app_bloc.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [Home.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
