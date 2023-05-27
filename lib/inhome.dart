import 'package:flutter/material.dart';
import 'package:phc/homepage.dart';

class InHomeServices extends StatefulWidget {
  const InHomeServices({super.key});
  @override
  State<InHomeServices> createState() => _InHomeServicesState();
}

class _InHomeServicesState extends State<InHomeServices> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("IN-HOME SERVICES"),
            centerTitle: true,
            leading: BackButton(
              color: Colors.black,
            )),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink.image(
                      image: AssetImage("images/phc6.jpg"),
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover),
                  SizedBox(height: 6),
                  TextButton(
                    child: const Text("Blood Test"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.all(75.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Text("Your Test has been booked"),
                          actions: [
                            TextButton(
                              child: Text("CANCEL"),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: Text("OK"),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink.image(
                      image: AssetImage("images/phc7.jpg"),
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover),
                  SizedBox(height: 6),
                  TextButton(
                    child: const Text("BP Test"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.all(75.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Text("Your Test has been booked"),
                          actions: [
                            TextButton(
                              child: Text("CANCEL"),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: Text("OK"),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink.image(
                      image: AssetImage("images/phc8.jpg"),
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover),
                  SizedBox(height: 6),
                  TextButton(
                    child: const Text("Other Services"),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.all(75.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Text("Please contact PHC for more details"),
                          actions: [
                            TextButton(
                              child: Text("CANCEL"),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: Text("OK"),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  }),
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(235, 242, 238, 238),
      ),
    );
  }
}
