import 'package:flutter/material.dart';
import 'package:home_task/src/core/colors/colors.dart';
import 'package:home_task/src/view/pages/main/home_page.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    Center(child: Text('Buscar')),
    Center(child: Text('Perfil')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      body: SafeArea(child: _pages[_selectedIndex]),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add!');
        },
        backgroundColor: MyColors.highlightColor,
        child: const Icon(Icons.add, size: 40, color: Colors.white),
        shape: const CircleBorder(),
        elevation: 6,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: Colors.white,
        elevation: 10,
        child: SizedBox(
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  size: 36,
                  color:
                      _selectedIndex == 0 ? MyColors.purpleButton : Colors.grey,
                ),
                onPressed: () => _onItemTapped(0),
              ),
              const SizedBox(width: 48),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  size: 36,
                  color:
                      _selectedIndex == 2 ? MyColors.purpleButton : Colors.grey,
                ),
                onPressed: () => _onItemTapped(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
