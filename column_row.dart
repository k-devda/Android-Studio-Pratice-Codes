import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          "Layout Design",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First Red Rectangle
                  Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Blue Rectangles
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 120,
                        color: Colors.blueAccent,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 50,
                        width: 120,
                        color: Colors.blueAccent,
                      ),
                    ],
                  ),

                  const SizedBox(width: 8),

                  // Yellow Circles
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.yellowAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.yellowAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(width: 8),

                  // Second Red Rectangle
                  Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Violet Rectangle 1
              SizedBox(
                width: 394,
                child: Container(
                  height: 50,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 10),

              // Violet Rectangle 2
              SizedBox(
                width: 394,
                child: Container(
                  height: 50,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}