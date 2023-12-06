import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled1/company.dart';
import 'package:untitled1/medicine.dart';
import 'package:untitled1/pill.dart';

class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "MED",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: const [
          CircleAvatar(
            radius: 12,
            backgroundColor: Colors.white,
            child: Icon(Icons.search, size: 17, color: Colors.black),
          )
        ],
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Colors.blueAccent,
              Colors.lightBlueAccent,
              Colors.blueGrey,
            ])),
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=830&q=80')),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              width: 250,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => company()),
                  );
                },
                child: Text(
                  "Company",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => medicine()),
                  );
                },
                child: Text(
                  "Medicine",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pill()),
                  );
                },
                child: Text(
                  "Pill",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
