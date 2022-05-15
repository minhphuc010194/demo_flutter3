import 'package:demo_flutter3/controllers/controller.changetab.dart';
import 'package:demo_flutter3/screens/account.screen.dart';
import 'package:demo_flutter3/screens/dashboard.screen.dart';
import 'package:demo_flutter3/screens/zen.screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    // Instantiate your class using Get.put() to make it available for all "child" routes there.
    return Scaffold(
        body: GetBuilder<ChangeTabController>(builder: (controller) {
          return <Widget>[
            const DashBoard(),
            const Zen(),
            const Account(),
          ][controller.tabIndexScreen];
        }),
        bottomNavigationBar: _buildNavigationBar(context));
  }

  Widget _buildNavigationBar(context) {
    return GetBuilder<ChangeTabController>(builder: (controller) {
      return NavigationBar(
        selectedIndex: controller.tabIndexScreen,
        onDestinationSelected: (index) {
          controller.setTab(index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            label: 'Trang chủ',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.self_improvement,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            label: 'Thiền',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.account_circle,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            label: 'Tài khoản',
          )
        ],
      );
    });
  }
}
