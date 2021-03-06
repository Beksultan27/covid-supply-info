import 'package:flutter/material.dart';
import 'package:tirek_mobile/services/AuthenticationService.dart';
import 'package:tirek_mobile/pages/RootPage.dart';
import 'package:tirek_mobile/pages/HomePage.dart';
import 'package:tirek_mobile/services/HospitalService.dart';
import 'package:tirek_mobile/services/LogoutService.dart';
import 'package:tirek_mobile/services/SharedPreferencesService.dart';

void main() {
  runApp(new TirekApplication());
}

class TirekApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SharedPreferencesService sharedPreferencesService = new TirekSharedPreferencesService();

    Widget rootPage = new RootPage(
        sharedPreferencesService: sharedPreferencesService,
        authenticationService: new TirekAuthenticationService());

    Widget homePage = new HomePage(
      hospitalService: new TirekHospitalService(sharedPreferencesService),
      logoutService: new TirekLogoutService(sharedPreferencesService),
      sharedPreferencesService: sharedPreferencesService,
    );

    Widget _defaultPage = rootPage;

    void setDefaultPage() async {
      final isLoggedIn = await sharedPreferencesService.isLoggedIn();
      _defaultPage = isLoggedIn ? homePage : rootPage;
    }

    setDefaultPage();


    return new MaterialApp(
        title: 'Tirek Application',
        home: _defaultPage,
        routes: {
          '/login': (context) => rootPage,
          '/home': (context) => homePage
        },
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}
