import 'package:flutter/material.dart';
import 'package:shaded/core/size_config/size_config.dart';
import 'package:shaded/view/joint_app_view/screens/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return  const MaterialApp(
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
