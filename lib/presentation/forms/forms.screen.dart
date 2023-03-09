import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/forms.controller.dart';

class FormsScreen extends GetView<FormsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormsScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FormsScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
