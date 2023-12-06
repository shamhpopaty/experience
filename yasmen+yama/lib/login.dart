import 'package:flutter/material.dart';
import 'package:untitled1/home-screen.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.blueAccent,
              Colors.lightBlueAccent,
              Colors.blueGrey,
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Welcome ..",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " UserName",
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Password",
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " confirm Password",
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => home_screen()),
                        );
                      },
                      child: Text("LOGIN"),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
