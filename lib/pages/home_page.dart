import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> quotes = [
    "Dream big and dare to fail.",
    "The only limit is your mind.",
    "In the end, we only regret the chances we didn't take.",
    "Believe you can and you're halfway there.",
    "Embrace the journey, not the outcome."
  ];

  List<Color> colorList = [
    Color.fromARGB(255, 80, 255, 192),
    Color.fromARGB(255, 243, 246, 73),
    Color.fromARGB(255, 116, 114, 217),
    Color.fromARGB(255, 255, 111, 111),
    Color.fromARGB(255, 250, 155, 229),
  ];

  int randomNumber = 0;

  void generateRandomNum() {
    int min = 0;
    int max = 5;
    Random random = Random();

    randomNumber = min + random.nextInt(max - min);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Color.fromARGB(255, 80, 255, 192),
            unselectedItemColor: Color.fromARGB(255, 62, 59, 83),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.draw), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.upload), label: '')
            ]),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              'Hello Steve!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Here is your quote of the day',
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              width: double.maxFinite,
              height: 320,
              decoration: BoxDecoration(
                  color: colorList[randomNumber], borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(quotes[randomNumber],
                    style: TextStyle(fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87
                    ),
                    
                    
                    
                    
                    
                          
                    ),
                  ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: GestureDetector(
              onTap: ()=>generateRandomNum(),
              child: Container(
                width: double.maxFinite,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Generate',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                )),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
