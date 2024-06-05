import 'package:flutter/material.dart' show Alignment, AppBar, BoxDecoration, BuildContext, Card, Colors, Container, EdgeInsets, FloatingActionButton, FontWeight, Icon, Icons, Key, LinearGradient, ListTile, ListView, Scaffold, ScaffoldMessenger, SnackBar, StatelessWidget, Text, TextStyle, Widget;
import 'package:intl/intl.dart';

class WaterIntakeScreen extends StatelessWidget {
  const WaterIntakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Intake History'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: 10, // Example: Displaying 10 items
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.white,
              child: ListTile(
                leading: const Icon(Icons.local_drink, color: Colors.blueAccent),
                title: const Text(
                  'Drank water',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  DateFormat.yMMMd().add_Hms().format(DateTime.now().subtract(Duration(hours: index))),
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          // Simulate adding water intake
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Water intake recorded')),
          );
        },
        child: const Icon(Icons.add, color: Colors.blueAccent),
      ),
    );
  }
}
