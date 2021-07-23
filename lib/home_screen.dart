import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:johrh/translation/app_locale.dart';

class HomeScreen extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('hello'.tr),
          onPressed: () {
            AppLocale.changeLang();
          },
        ),
      ),
    );
  }
}
