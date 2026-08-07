import 'package:flutter/material.dart';

class login_image extends StatelessWidget {
  const login_image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [

                Container(
                  height: 300,
                  width: 450,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),

                    image: DecorationImage(
                      fit: BoxFit.fill,
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsuXwww6RrlyNKU-QY3jZIBCNCP7PkDiYQZH_wNNLXMw&s=10"))
                  ),
                  ),


                Positioned(
                    bottom: -90,
                    right: 55,
                    child: Container(
                      height: 150,
                      width: 350,
                      color: Colors.white,

                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                 labelText: "Username",
                                  suffixIcon: Icon(Icons.person),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    suffixIcon: Icon(Icons.remove_red_eye),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              ],
                        ),
                      ),

                    ),

                ),

                Positioned(
                  bottom: -120,
                  right: 210,
                  child: CircleAvatar(
                    radius: 25,
                    child: Icon(
                      Icons.arrow_right_alt_sharp,
                    ),

                  ),

                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
