import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/screens/easylvl.dart';
import 'diet_screen.dart';
import 'workout_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diet and Workout App',
      home: HomeScreen(),
      /*routes: {
        '/diet': (context) => HealthexpertWidget(),
        '/workout': (context) => WorkoutScreen(),
      },*/
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        GestureDetector(
  onTap: () => Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => HealthexpertWidget(),
    ),
  ),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.orange, // Change the color to your preferred vibrant color
      borderRadius: BorderRadius.circular(10.0), // Rounded corners for a modern look
    ),
    padding: EdgeInsets.all(12.0), // Padding to give some space around the text
    child: Text(
      'Medical expert',
      style: TextStyle(
        color: Colors.white, // Text color
        fontWeight: FontWeight.bold, // Make the text bold for prominence
        fontSize: 18.0, // Adjust the font size as needed
      ),
    ),
  ),
)
,
            SizedBox(height: 20),
            GestureDetector(
  onTap: () => Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => Easylvl(),
    ),
  ),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.orange, // Change the color to your preferred vibrant color
      borderRadius: BorderRadius.circular(10.0), // Rounded corners for a modern look
    ),
    padding: EdgeInsets.all(12.0), // Padding to give some space around the text
    child: Text(
      'WORKOUT',
      style: TextStyle(
        color: Colors.white, // Text color
        fontWeight: FontWeight.bold, // Make the text bold for prominence
        fontSize: 18.0, // Adjust the font size as needed
      ),
    ),
  ),
)

          ],
        ),
      ),
    );
  }
}