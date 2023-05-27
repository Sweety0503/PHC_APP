import 'package:flutter/material.dart';
import 'package:phc/loginpage.dart';
import 'package:phc/prof.dart';

class editaccount extends StatelessWidget {
  const editaccount({super.key});

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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'PROFILE',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 9, 9, 9),
                    fontWeight: FontWeight.bold),
              ),
              Text('\n'),
              Image.asset(
                'images/phc9.png',
                width: 150,
              ),
              const Text('\n'),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text('EDIT PROFILE',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return prof();
                  }));

                  // ...
                },
              ),
              const Text('\n'),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.blue),
                child: const Text('LOG OUT',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return login();
                  }));

                  // ...
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
