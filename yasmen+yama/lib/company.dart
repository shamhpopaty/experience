import 'package:flutter/material.dart';
import 'package:untitled1/addmed2.dart';
import 'package:untitled1/edit2.dart';
import 'package:untitled1/search2.dart';

class company extends StatelessWidget {
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
            Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              color: Colors.black,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                    child: Ink.image(
                      image: NetworkImage(
                        'https://argaamplus.s3.amazonaws.com/3b46139b-83be-4816-a588-2ab1aa5e9910.png',
                      ),
                      height: 200,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
            const ListTile(
              title: Text(
                'company name',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'madicine type',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style:
                        TextButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => edit2()),
                          );
                        },
                        child: const Text(
                          "Edit",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextButton(
                        style:
                        TextButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => search2()),
                          );
                        },
                        child: const Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextButton(
                        style:
                        TextButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AddMed2()),
                          );
                        },
                        child: const Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
