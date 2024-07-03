import 'package:flutter/material.dart';
import 'package:weather_app/views/searchview.dart';

class StartAppPage extends StatelessWidget {
  const StartAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Padding(padding: EdgeInsets.symmetric(horizontal:10),
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
    Text("there is no weather 😞 start",
    style: TextStyle(fontSize: 30),
    ),
Text("searching now 🔍",
    style: TextStyle(fontSize: 30),
    ),
    
        ]
      ),
    ),
    
    ) ;
    
  }
}