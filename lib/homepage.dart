import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:phc/editacc.dart';
import 'package:phc/inhome.dart';
import 'package:phc/help.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void navigateToBookAppointment() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BookAppointment()),
    );
  }

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
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Icon(Icons.home),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Notification()),
                    );
                  },
                  child: Icon(Icons.notifications),
                ),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => editaccount()),
                    );
                  },
                  child: Icon(Icons.person),
                ),
                label: 'Account',
              ),
            ],
          ),
          body: Stack(
            children: [
              Positioned(
                left: 75,
                top: -70,
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/phc5.jpg"),
                  radius: 300,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: navigateToBookAppointment,
                child: Stack(
                  children: [
                    Positioned(
                      left: 25,
                      top: 75,
                      child: Column(
                        children: [
                          Image.asset(
                            'images/phc2.jpg',
                            width: 60,
                            height: 60,
                          ),
                          SizedBox(height: 8),
                          Text("Book Appointment",
                              style: TextStyle(
                                color: Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 70,
                bottom: 10,
                child: Column(
                  children: [
                    Image.asset(
                      'Images/phc8.jpg',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(height: 8),
                    TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.blue),
                        child: const Text('In-Home services',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const InHomeServices();
                          }));
                        }),
                  ],
                ),
              ),
              Positioned(
                left: 40,
                bottom: 20,
                child: Column(
                  children: [
                    Image.asset(
                      'Images/phc3.jpg',
                      width: 60,
                      height: 60,
                    ),
                    SizedBox(height: 8),
                    TextButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.blue),
                        child: const Text('Help',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.normal)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const help();
                          }));
                        }),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class Notification extends StatefulWidget {
  const Notification({super.key});

  @override
  State<Notification> createState() => _NotificationState();
}

class _NotificationState extends State<Notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
      ),
    );
  }
}

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
      ),
    );
  }
}

List<String> days = [
  'Sun',
  'Mon',
  'Tues',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
];

class BookAppointment extends StatefulWidget {
  const BookAppointment({super.key});

  @override
  State<BookAppointment> createState() => _BookAppointmentState();
}

class _BookAppointmentState extends State<BookAppointment> {
  DateTime? selectedDate;

  Future<void> _selectDate() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2025),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String buttonText = selectedDate != null
        ? 'Selected Date: ${selectedDate!.toString()}'
        : 'Select Date';
    return Scaffold(
      backgroundColor: Color.fromARGB(235, 242, 238, 238),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 129, 184),
        title: Text('BOOK APPOINTMENT'),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 600),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey), color: Colors.white),
              width: 300,
              height: 50,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'ALL DOCTORS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 125, 125, 125),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 850,
            top: 10,
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              width: 50,
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 20),
                      elevation: 8,
                    ),
                    onPressed: null,
                    child: Text(
                      '^',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 250,
                    height: 30,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(color: Colors.white, fontSize: 20),
                        elevation: 8,
                        backgroundColor: Color.fromARGB(255, 0, 129, 184),
                      ),
                      onPressed: null,
                      child: Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Choose Date',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: _selectDate,
                          child: Text('Select Date'),
                        ),
                        SizedBox(height: 20),
                        Text(
                          selectedDate != null
                              ? '   Selected Date: ${selectedDate!.toString()}'
                              : '   No Date Selected',
                        ),
                      ],
                    ),
                  ],
                ),
                Center(child: SizedBox(height: 40)),
                Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: days.length,
                        itemBuilder: (context, index) {
                          final item = days[index];
                          return Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: TextButton(
                                  onPressed: null,
                                  child: Text(
                                    item,
                                    style: TextStyle(fontSize: 16),
                                  )));
                        }))
              ],
            ),
          )
        ],
      ),
    );
  }
}
