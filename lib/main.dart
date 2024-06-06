// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 214, 214, 215),
      appBar: AppBar(
        elevation: 7,
        title: const Text('Profile', style: TextStyle(height: 24)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: const SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 100, backgroundImage: AssetImage("image/subash.png")),
              SizedBox(height: 12),
              Text(
                "Hello i am Subash Dhami, i am flutter developer.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text("Address:"),
                subtitle: Text(" Pokhara, 11 fulbari"),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email:"),
                subtitle: Text("dhamisubash866@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("website:"),
                subtitle: Text("subashdhami.com.np"),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Number:"),
                subtitle: Text("977-9862451644"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
