import 'package:demo_flutter3/controllers/controller.changetab.dart';
import 'package:demo_flutter3/screens/home.screen.dart';
import 'package:demo_flutter3/screens/login.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.teal,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const HomeScreen(),
          binding: BindingsBuilder(
            () {
              Get.put(ChangeTabController());
            },
          ),
        ),
        GetPage(
          name: "/login",
          page: () => const LoginScreen(),
          // binding: BindingsBuilder(
          //   () {
          //     Get.put(ChangeTabController());
          //   },
          // ),
        )
      ],
    );
  }
}
