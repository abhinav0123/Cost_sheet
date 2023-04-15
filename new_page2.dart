import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cost_application/new_page3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:cost_application/SecondPage.dart';
import 'package:cost_application/ThirdPage.dart';
import 'package:cost_application/firebase_options.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'Result.dart';
import 'package:cost_application/new_page1.dart';
import 'package:cost_application/new_page2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cost_application/firebase_options.dart';

import 'SecondPage2.dart';
import 'main.dart';
import 'new_page1.dart';

class newapp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      routes:
       {
         // '/': (context) =>  MyApp2(),
         // When navigating to the "/second" route, build the SecondScreen widget.
         '/putv': (context) =>  MyAppy(),
      },
    );
  }
}
class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  TextEditingController? textController1;
  // TextEditingController? textController2;
  // TextEditingController? textController3;
  // TextEditingController? textController4;
  // TextEditingController? textController5;
  // TextEditingController? textController6;
  // TextEditingController? textController7;
  // TextEditingController? textController8;
  // TextEditingController? textController9;
  // TextEditingController? textController10;
  // TextEditingController? textController11;
  // TextEditingController? textController12;
  // TextEditingController? textController13;
  // TextEditingController? textController14;
  CollectionReference users =
  FirebaseFirestore.instance.collection('CostSheet');


  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    // textController2 = TextEditingController();
    // textController3 = TextEditingController();
    // textController4 = TextEditingController();
    // textController5= TextEditingController();
    // textController6= TextEditingController();
    // textController7= TextEditingController();
    // textController8= TextEditingController();
    // textController9= TextEditingController();
    // textController10= TextEditingController();
    // textController11= TextEditingController();
    // textController12= TextEditingController();
    // textController13= TextEditingController();
    // textController14= TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.deepPurple[100],
        body:SingleChildScrollView(


          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                  child: Text(
                    'Enter  The Freight Rates For Gandhidham ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'UP',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MP',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rajasthan',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Haryana ',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Punjab',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Orrisa',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Jharkhand',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Chattisgarh',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'West Bengal',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Assam',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Uttarakhand',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delhi NCR',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Himachal',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'J & K',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextFormField(
                          controller: textController1,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFF9EFAC7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(250, 50, 20, 0),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () async {

                      await users
                          .doc('VdD1KmsYSvjhVDyx0RYw')
                          .update({
                        'Frieghtg': double.parse((textController1 == null
                            ? '0'
                            : textController1!.text)),

                      })
                          .then((value) => {print("Data updated")})
                          .catchError((error) => {
                        print(error),
                      });

                      Navigator.of(context).pushNamed('/putv');
                    },
                    label: Container(
                        width: 130,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text('Next ')),
                    icon: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );



  }
}