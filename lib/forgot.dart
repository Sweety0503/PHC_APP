import 'package:flutter/material.dart';
import 'package:phc/account.dart';
import 'package:phc/loginpage.dart';
import 'account.dart';

class forgot extends StatelessWidget {
  const forgot({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '\nForgot password ?',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 9, 9, 9),
                fontWeight: FontWeight.bold),
          ),
          Text('\n\n\n'),
          SizedBox(
            width: 200,
            child: TextField(
              style: TextStyle(
                fontSize: 10.0,
                height: 1.0,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'The email you used while creating account'),
            ),
          ),
          Text('\n'),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: Text('Send OTP',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
            onPressed: () {
              // ...
            },
          ),
          Text('\n'),
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
        ],
      ),
    );
  }
}
