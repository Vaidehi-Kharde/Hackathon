import 'package:eventease/screens/budget.dart';
import 'package:eventease/screens/generateReport.dart';
import 'package:eventease/screens/information.dart';
import 'package:eventease/screens/permissionLetterScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
            child: Text(
              'EventEase',
              style: TextStyle(fontSize: 30, color: Color(0xff009697)),
            )),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline),
            color: Colors.white,
            onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => informationPage())
              );
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
                height: height*0.03,
              ),
              const Text(
                'Letter Templates',
                style: TextStyle(color: Color(0xff009697), fontSize: 20),
              ),
              SizedBox(
                height: height*0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * 0.02),
                          border: Border.all(
                            color: const Color(0xff009697),
                            width: width * 0.006,
                          ),
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(height * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * 0.05,
                                  child: IconButton(
                                    icon: Icon(Icons.sticky_note_2_outlined, size: height * 0.08),
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) =>PermissionLetterScreen())
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: height * 0.025),
                                  child: Text('Auditorium',
                                      style: TextStyle(
                                          fontSize: height * 0.02,
                                          color: Colors.white)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.15,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * 0.02),
                        border: Border.all(
                          color: Color(0xff009697),
                          width: width * 0.006,
                        ),
                      ),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(height * 0.02),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height * 0.05,
                                child: IconButton(
                                  icon: Icon(Icons.sticky_note_2_outlined, size: height * 0.08),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) =>PermissionLetterScreen()));
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.025),
                                child: Text('MAC',
                                    style: TextStyle(
                                        fontSize: height * 0.02,
                                        color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * 0.02),
                          border: Border.all(
                            color: Color(0xff009697),
                            width: width * 0.006,
                          ),
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(height * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * 0.05,
                                  child: IconButton(
                                    icon: Icon(Icons.sticky_note_2_outlined, size: height * 0.08),
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) =>PermissionLetterScreen()));
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: height * 0.025),
                                  child: Text('CRC',
                                      style: TextStyle(
                                          fontSize: height * 0.02,
                                          color: Colors.white)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height * 0.15,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * 0.02),
                        border: Border.all(
                          color: Color(0xff009697),
                          width: width * 0.006,
                        ),
                      ),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(height * 0.02),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height * 0.05,
                                child: IconButton(
                                  icon: Icon(Icons.sticky_note_2_outlined, size: height * 0.08),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) =>PermissionLetterScreen()));
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.025),
                                child: Text('others',
                                    style: TextStyle(
                                        fontSize: height * 0.02,
                                        color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.03,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Generate report',
                  style: TextStyle(color: Color(0xff009697), fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.07),
                child: Row(
                  children: [
                    Container(
                      height: height * 0.15,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * 0.02),
                        border: Border.all(
                          color: Color(0xff009697),
                          width: width * 0.006,
                        ),
                      ),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(height * 0.02),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height * 0.05,
                                child : IconButton(
                                  icon: Icon(Icons.sticky_note_2_outlined, size: height * 0.08),
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) =>generateReport()));
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: height * 0.025),
                                child: Text('Report',
                                    style: TextStyle(
                                        fontSize: height * 0.02,
                                        color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height*0.03,
              ),
              const Text(
                'Create Budget',
                style: TextStyle(color: Color(0xff009697), fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: height * 0.15,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * 0.02),
                          border: Border.all(
                            color: const Color(0xff009697),
                            width: width * 0.006,
                          ),
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(height * 0.02),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: height * 0.05,
                                  child: IconButton(
                                    icon: Icon(Icons.sticky_note_2_outlined, size: height * 0.08),
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) =>BudgetScreen()));
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: height * 0.025),
                                  child: Text('Budget',
                                      style: TextStyle(
                                          fontSize: height * 0.02,
                                          color: Colors.white)),
                                ),
                              ],
                            ),
                          ),
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
