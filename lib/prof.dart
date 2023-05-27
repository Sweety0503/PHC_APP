import 'package:flutter/material.dart';
import 'package:phc/editacc.dart';
import 'package:phc/homepage.dart';

class prof extends StatelessWidget {
  const prof({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 129, 184),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 129, 184),
          title: SizedBox(
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "Images/phc1.jpg",
                      scale: 25,
                      fit: BoxFit.fitHeight,
                    ),
                    Column(
                      children: [
                        Text(
                          " PHC                  ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(" Live,Love,Care"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '\nEdit Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 9, 9, 9),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                style: TextStyle(
                  fontSize: 10.0,
                  height: 1.0,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Firstname',
                    hintText: 'Enter your first name'),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                style: TextStyle(
                  fontSize: 10.0,
                  height: 1.0,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Secondname',
                    hintText: 'Enter your second name'),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                style: TextStyle(
                  fontSize: 10.0,
                  height: 1.0,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your email',
                    hintText: 'This will be used as your username'),
              ),
            ),
            SizedBox(
              width: 200,
              child: TextField(
                style: TextStyle(
                  fontSize: 10.0,
                  height: 1.0,
                ),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your phone number',
                    hintText: '+91xxxxxxxxxx'),
              ),
            ),
            Text('\n'),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.blue),
              child: const Text('EDIT',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return prof();
                }));

                // ...
              },
            ),
            TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text('Go back',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return editaccount();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
