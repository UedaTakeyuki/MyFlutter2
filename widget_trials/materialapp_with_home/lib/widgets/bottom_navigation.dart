import 'package:flutter/material.dart';
import 'package:materialapp_with_home/pages/home_a.dart';
import 'package:materialapp_with_home/pages/home_b.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  // 各画面のリスト
  static const _screens = [
    HomeA(),
    HomeB(),
  ];
  // 選択されている画面のインデックス
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
        body: _screens[_selectedIndex],
        // 本題のNavigationBar
        bottomNavigationBar: NavigationBar(
          // タップされたタブのインデックスを設定（タブ毎に画面の切り替えをする）
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          // 選択されているタブの色（公式サイトのまま黄色）
          indicatorColor: Colors.amber,
          // 選択されたタブの設定（設定しないと画面は切り替わってもタブの色は変わらないです）
          selectedIndex: _selectedIndex,
          // タブ自体の設定（必須項目のため、書かないとエラーになります）
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'HomeA',
            ),
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'HomeB',
            ),
          ],
        ));
  }
}
