import 'package:flutter/material.dart';
import 'package:hearts4paws/screens/homeScreen.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const BottomNavigationBarExampleApp());

class BottomNavigationBarExampleApp extends StatelessWidget {
  const BottomNavigationBarExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData( useMaterial3: true, colorScheme: ColorScheme.fromSeed(primary: Colors.amber[800], seedColor: Colors.white, onPrimary: Color.fromRGBO(4, 6, 7, 1))),
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _pages = [
    const Center(child: Text('menu')),
    homeScreen(),
    const Center(child: Text('menu')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.pets_rounded),
            label: 'Профиль',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Дело',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: (int index) {
          switch (index) {
            case 0:
                         // Future.delayed(Duration(milliseconds: 100)).then((value) => _showMenu(context));

              break;
            case 1:
              _onItemTapped(index);
              break;
            case 2:
              _onItemTapped(index);
              break;
            case 3:
              _onItemTapped(index);
              break;
            case 4:
              _onItemTapped(index);
              break;
          }
        },
      ),
    );
  }
}
