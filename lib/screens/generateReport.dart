import 'package:eventease/screens/budget.dart';
import 'package:flutter/material.dart';

class generateReport extends StatefulWidget {
  const generateReport({Key? key}) : super(key: key);

  @override
  State<generateReport> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<generateReport> {
  final TextEditingController eventNameController = TextEditingController();
  final TextEditingController eventDateController = TextEditingController();
  final TextEditingController totalAmountController = TextEditingController();
  final TextEditingController venueController = TextEditingController();
  final TextEditingController attendeesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(30),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/images.jpg'),
                radius: 70,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Center(
                child: Text(
                  'Vaidehi Kharde',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Text(
                  'Vaidehi Kharde',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              title: Center(
                child: Text(
                  'Vaidehi Kharde',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
            child: Text(
              'Report',
              style: TextStyle(fontSize: 30, color: Color(0xff009697)),
            )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline),
            color: Colors.white,
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: height * 0.002),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height*0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.02),
                      child: TextField(
                        controller: eventNameController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Event Name',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.02),
                      child: TextField(
                        controller: eventDateController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Event Date',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.02),
                      child: TextField(
                        controller: totalAmountController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Total Amount Granted',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.02),
                      child: TextField(
                        controller: venueController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Venue',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: height*0.02),
                      child: TextField(
                        controller: attendeesController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          labelText: 'Number of Attendees',
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>BudgetScreen()));
                        },
                        child: Text('Add Budget', style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff009697)
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: height*0.02),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>BudgetScreen()));
                        },
                        child: Text('Add Budget', style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff009697)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
