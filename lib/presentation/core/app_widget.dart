import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../presentation/views/auth/auth_view.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
        title: "Vup Cliente App",
        home: AuthView(),
      );
    });
  }
}
