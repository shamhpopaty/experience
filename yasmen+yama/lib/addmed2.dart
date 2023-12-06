import 'package:flutter/material.dart';

class AddMed2 extends StatelessWidget {
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Add Company",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Company  id",
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Company name",
                        filled: true,
                        fillColor: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("submite"),
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
