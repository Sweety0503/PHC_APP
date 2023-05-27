import 'package:flutter/material.dart';
import 'package:phc/account.dart';
import 'package:phc/forgot.dart';
import 'package:phc/homepage.dart';
import 'account.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
          const Text(
            '\nLogin',
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 9, 9, 9),
                fontWeight: FontWeight.bold),
          ),
          const Text(
            '     Sign in with your data that you entered during your registration\n\n',
            style: TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 147, 130, 130),
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(
            width: 400,
            child: TextField(
              style: TextStyle(
                fontSize: 10.0,
                height: 1.0,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'abc@gmail.com'),
            ),
          ),
          const Text('\n\n'),
          const SizedBox(
            width: 400,
            child: TextField(
              style: TextStyle(
                fontSize: 10.0,
                height: 1.0,
              ),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'min 8 characters'),
            ),
          ),
          const Text('\n\n'),
          CheckboxExample(),
          const Text("Keep me logged in"),
          const Text('\n'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Dont have an account?'),
              TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.blue),
                  child: const Text('Create an account',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.normal)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const account();
                    }));
                  }),
            ],
          ),
          const Text('\n'),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: const Text('Forgot Password',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.normal)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const forgot();
              }));

              // ...
            },
          ),
          const Text('\n'),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.blue),
            child: const Text('LOGIN',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold)),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));

              // ...
            },
          ),
        ],
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
