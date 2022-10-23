import 'package:flutter/material.dart';
import 'package:flutter_declarative_navigation_example/app/routes/navigation/settings_navigation.dart';
import 'package:flutter_declarative_navigation_example/app/screen/book_list/book_list_screen.dart';
import 'package:flutter_declarative_navigation_example/generated/l10n.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void changeTabIndex(int newIndex) {
    tabController.animateTo(newIndex);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: tabController,
          children: const [
            BookListScreen(),
            SettingsNavigation(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: changeTabIndex,
          currentIndex: tabController.index,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.book), label: S.of(context).books),
            BottomNavigationBarItem(
                icon: const Icon(Icons.settings), label: S.of(context).settings)
          ],
        ),
      ),
    );
  }
}
