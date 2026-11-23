import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'chooseRoleScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 1, 56, 39),
              Color(0xFFF6EEDD),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.sports_soccer, 
              size: 100, color:
              Colors.white),
            SizedBox(height: 20),
            Text('CAMPUSPLAY',
                style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)
                    ),
            SizedBox(height: 10),
            Text('Play. Connect. Compete.',
                style: TextStyle(
                  fontSize: 16, 
                  color: Colors.white70)),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Get.to(() => ChooseRoleScreen());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 40, 
                  vertical: 12),
              ),
              child: Text('GET STARTED',
                  style: TextStyle(
                    color: Color(0xFF0B4D2E),
                    fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}