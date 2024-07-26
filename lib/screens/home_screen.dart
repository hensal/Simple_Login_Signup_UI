import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.red,
            centerTitle: true,
            title: const Text(
              'Home Screen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times',
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  // Navigate to login screen
                  Navigator.pushReplacementNamed(context, '/');
                },
              ),
            ],
          ),
          body: const SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  // images assets
                  SizedBox(
                    height: 10,
                    width: 10,
                  ),
                  Text(
                    'Welcome to my app ❤️',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                  Text(
                    'https://github.com/hensal',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontFamily: 'Times New Roman',
                    ),
                  ),
                ],
              ),
            ),
          ),
          drawer: const Drawer(),
        ),
      ),
    );
  }
}
