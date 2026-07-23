import 'package:flutter/material.dart';

// StatelessWidget is used because this screen has a fixed UI
class Shapelayout extends StatelessWidget {
  const Shapelayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Provides the basic structure of one screen
      appBar: AppBar( // Top bar of the screen
        backgroundColor: Colors.brown, // AppBar background color
        title: const Text(
          "Layout Shapes Desgin", // Title shown in AppBar
          style: TextStyle(color: Colors.blueGrey), // Title text color
        ),
      ),

      // Body contains all the widgets of this screen
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,

        // Column is used because widgets are arranged from top to bottom
        children: [

          // First Row
          // Row is used because shapes are arranged horizontally
          Row(
            children: [

              // Adds space around the first rectangle
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4), // Rounded corners
                  ),
                ),
              ),

              // Column is used because two blue boxes are placed vertically
              Column(
                children: [

                  // First blue box
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),

                  // Space around second blue box
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                ],
              ),

              // Column is used because two circles are one below another
              Column(
                children: [

                  // First circle
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle, // Makes the container circular
                    ),
                  ),

                  // Space around second circle
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),

              // Last red rectangle
              Container(
                height: 100,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),

          // Purple boxes section
          Row(
            children: [

              // Column is used because both purple boxes are vertical
              Column(
                children: [

                  // First purple box
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 300,
                      color: Colors.purple,
                    ),
                  ),

                  // Second purple box
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 300,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
            ],
          ),

          // Bottom Row
          // Row is used because all groups are arranged side by side
          Row(
            children: [

              // First Column - Grey Boxes
              Column(
                children: [

                  // First grey rectangle
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 35,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  // Second grey rectangle
                  Container(
                    height: 35,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              // Second Column - Red Boxes
              Column(
                children: [

                  // First red rectangle
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 35,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                  ),

                  // Second red rectangle
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 35,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),

              // Third Column - Blue Boxes
              Column(
                children: [

                  // First blue rectangle
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 85,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),

                  // Second blue rectangle
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 85,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),

              // Fourth Column - Black Boxes
              Column(
                children: [

                  // First black square
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                      ),
                    ),
                  ),

                  // Second black square
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}