
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

         Align(
           alignment: Alignment.centerRight,
           child:
           CircleAvatar(
             radius: 20,
             backgroundColor: Colors.orange,
             child: Text("K"),
           ),
         ),

          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              textAlign: TextAlign.center,
              "Login Page",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.bold,

                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  //labelText: "Username",
                  hintText: "Username",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  //hintText: "Password",
                  prefixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
