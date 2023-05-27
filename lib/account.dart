import 'package:flutter/material.dart';
import 'package:phc/loginpage.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 242, 238, 238),
      appBar: AppBar(
        title: SizedBox(
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/phc1.jpg",
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
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Text(
          '\nCreate your account',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(255, 9, 9, 9),
              fontWeight: FontWeight.bold),
        ),
        Text('\n'),
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
                labelText: 'Age',
                hintText: 'Enter your age'),
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
                labelText: 'Gender',
                hintText: 'Enter your gender'),
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
                labelText: 'Create password',
                hintText: 'Min 6 characters'),
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
        Text('\n\n'),
        TextButton(
          style: TextButton.styleFrom(foregroundColor: Colors.blue),
          child: const Text('SUBMIT',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold)),
          onPressed: () {
            // ...
          },
        ),
        Text('\n\n'),
        TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: const Text('Go back',
                style: TextStyle(
                    fontSize: 10,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const login();
              }));
            }),
      ]),
    );
  }
}
