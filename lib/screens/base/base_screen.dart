import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:xlo/screens/home/home_screen.dart';
import 'package:xlo/stores/page_store.dart';

class BaseScreen extends StatefulWidget {

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();

  final PageStore pageStore = PageStore();

  @override
  void initState() {
    super.initState();

    reaction(
        (_) => pageStore.page,
        (page) => pageController.jumpToPage(page)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
        ],
      ),
    );
  }
}
