import 'package:flutter/material.dart';
import 'package:fruits_app/features/home/presentation/views/products_view.dart';
import 'package:fruits_app/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruits_app/features/home/presentation/widgets/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (value) {
          setState(() {
            currentViewIndex = value;
          });
        },
      ),
      body: SafeArea(
          child: IndexedStack(
        index: currentViewIndex,
        children: const [HomeView(), ProductsView()],
      )),
    );
  }
}
