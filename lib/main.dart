import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'pages/home.dart';

main() => runApp(
      // DevicePreview(builder: (_) =>
      MyApp(),
      // ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      title: 'App Responsivo',
      home: HomePage(),
    );
  }
}

