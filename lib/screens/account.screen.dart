import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Get.toNamed('/login');
            },
            child: Center(child: Text('Đăng nhập')),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Center(child: Text('Đăng ký')),
          ),
        ],
      ),
    );
  }
}
