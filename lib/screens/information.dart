import 'package:flutter/material.dart';

class informationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Information',
          style: TextStyle(
            fontSize: 40.0,
            color: Color(0xff009697)
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.1, vertical: height*0.03),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height*0.025),
                  child: Text('Steps to be followed:',
                      style: TextStyle(
                        fontSize: height*0.03,
                        color: Colors.white,
                      ),
                    textAlign: TextAlign.center
                    ),
                ),
                Text(
                      'To Generate a new letter for organising any Event,firstly apply to the respective professor incharge of the particular Event.\nYou have to submit all your information correctly in the Lettor Generating section.Also attaching the correct and valid budget bills is mandatory.\n\n'
                      'Respective professor will check the letter and budget list.If your budget is "Less than 25k ",it will be authorised by Professor only and you will get to know about its status in status section.\n\n'
                      'For budget "greater than 25k ", professor will pass the letter to upper authority.\n\n'
                      'To check the status of your permission request, go to "Status Section"\n\n',
                    style: TextStyle(
                      fontSize: height*0.02,
                      color: Colors.white,
                    ),
                  textAlign: TextAlign.center,
                  ),
              ],
            ),
            ),
          ),
        ),
      );
  }
}
