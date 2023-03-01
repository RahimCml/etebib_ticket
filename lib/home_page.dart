import 'package:etebib_ticket/screen/covid-19_screen.dart';
import 'package:etebib_ticket/screen/home_screen.dart';
import 'package:etebib_ticket/screen/laboratory_screen.dart';
import 'package:etebib_ticket/screen/online_ticket.dart';
import 'package:etebib_ticket/screen/others.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIntex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const LaboratoryScreen(),
    const Covid19Screen(),
    const OnlineTicketScreen(),
    const OthersScreen(),
  ];

  void _onItemTapped (int index) {
    setState(() {
      _selectedIntex = index;
      print('index $_selectedIntex');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Online Novbe"),
      ),
      body: Center(
        child: _widgetOptions[_selectedIntex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIntex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.biotech_outlined), label: 'Laboratoriya' ),
          BottomNavigationBarItem(icon: Icon(Icons.coronavirus), label: 'COVID-19'),
          BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: 'Online randevu'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Digerleri'),
        ],
      ),
    );
  }
}