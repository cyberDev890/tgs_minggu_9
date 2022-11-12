import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'modules/home/controllers/demo_controller.dart';
import 'modules/home/views/demoPage.dart';
import 'modules/home/views/home_view.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final DemoController ctrl = Get.put(DemoController());

  @override
  Widget build(BuildContext context) {
    return SimpleBuilder(builder: (_) {
      return GetMaterialApp(
          title: 'Getx',
          theme: ctrl.theme,
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/cart': (context) => DemoPage(),
          });
    });
  }
}
