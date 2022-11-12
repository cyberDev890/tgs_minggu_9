import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/demo_controller.dart';

class DemoPage extends StatelessWidget {
  final DemoController ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Page'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Get.arguments),
              ),
              SwitchListTile(
                  value: ctrl.isDarkMode,
                  title: Text('Hello this is the Snackbar message'),
                  onChanged: ctrl.changeTheme),
              ElevatedButton(
                  onPressed: () => Get.snackbar(
                      'Snackbar', 'Hello this is the Snackbar message',
                      snackPosition: SnackPosition.BOTTOM,
                      colorText: Colors.white,
                      backgroundColor: Colors.black87),
                  child: Text('Snack Bar')),
              ElevatedButton(
                  onPressed: () => Get.defaultDialog(
                      title: 'Dialogue', content: Text('Hey from Dialogue')),
                  child: Text('Dialogue')),
              ElevatedButton(
                  onPressed: () => Get.bottomSheet(Container(
                      height: 150,
                      color: Colors.white,
                      child: Text('Hello Form Bottom Sheet',
                          style: TextStyle(fontSize: 30.0)))),
                  child: Text('Bottom Sheet')),
              ElevatedButton(
                  onPressed: () => Get.offNamed('/'),
                  child: Text('Back to Home'))
            ]),
      ),
    );
  }
}
