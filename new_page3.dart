import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cost_application/Result.dart';
import 'package:cost_application/Result.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'firebase_options.dart';
import 'main.dart';



class Appone extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:
      {
        // '/': (context) =>  MyAppy(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/respage': (context) =>  Result(),
      },
    );
  }
}
class MyAppy extends StatefulWidget {
  const MyAppy({Key? key}) : super(key: key);

  @override
  State<MyAppy> createState() => _MyAppyState();
}

class _MyAppyState extends State<MyAppy> {
  String? _previousValue1;
  String? _previousValue2;
  String? _previousValue3;
  String? _previousValue4;
  String? _previousValue5;
  String? _previousValue6;
  String? _previousValue7;
  String? _previousValue8;
  String? _previousValue9;
  String? _previousValue10;



  // TextEditingController? textController1;
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
  // TextEditingController? textController15;
  // TextEditingController? textController16;
  // TextEditingController? textController17;
  // TextEditingController? textController18;
  // TextEditingController? textController19;
  final _prefs = SharedPreferences.getInstance();
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  final textController4 = TextEditingController();
  final textController5 = TextEditingController();
  final textController6 = TextEditingController();
  final textController7 = TextEditingController();
  final textController8 = TextEditingController();
  final textController9 = TextEditingController();
  final textController10 = TextEditingController();
  CollectionReference users =
  FirebaseFirestore.instance.collection('CostSheet');
  double Palm15ltr = 0, KGMustard15ltr = 0, Soya15ltr = 0, EMustard15ltr = 0;
  double Palm15ltr_ = 0,
      KGMustard15ltr_ = 0,
      Soya15ltr_ = 0,
      EMustard15ltr_ = 0;
  double Palm15ltrTin = 0,
      KGMustard15ltrTin = 0,
      Soya15ltrTin = 0,
      EMustard15ltrTin = 0;
  double Palm1ltrPouch = 0,
      KGMustard1ltrPouch = 0,
      Soya1ltrPouch = 0,
      EMustard1ltrPouch = 0;






  @override
  void initState() {
    super.initState();
    _prefs.then((prefs) {
      _previousValue1 = prefs.getString('previous_value1_');
      textController1.text = _previousValue1 ?? '';

      _previousValue2 = prefs.getString('previous_value2_');
      textController2.text = _previousValue2 ?? '';

      _previousValue3 = prefs.getString('previous_value3_');
      textController3.text = _previousValue3 ?? '';

      _previousValue4 = prefs.getString('previous_value4_');
      textController4.text = _previousValue4 ?? '';

      _previousValue5 = prefs.getString('previous_value5_');
      textController5.text = _previousValue5 ?? '';
      _previousValue6 = prefs.getString('previous_value6_');
      textController6.text = _previousValue6 ?? '';

      _previousValue7 = prefs.getString('previous_value7_');
      textController7.text = _previousValue7 ?? '';

      _previousValue8 = prefs.getString('previous_value8_');
      textController8.text = _previousValue8 ?? '';

      _previousValue9 = prefs.getString('previous_value9_');
      textController9.text = _previousValue9 ?? '';

      _previousValue10 = prefs.getString('previous_value10_');
      textController10.text = _previousValue10 ?? '';


    });




  }

  @override
  Widget build(BuildContext context) {
    var myController;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.deepPurple[100],
        body:SingleChildScrollView(

          child: Center(
            child: Column(

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Text(
                        'Enter the below details for tin : ',
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
                            'Cartoon ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController1,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue1 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value1_', _previousValue1 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                            'Packing',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController2,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue2 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value2_', _previousValue2 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                            'Filling',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController3,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue3 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value3_', _previousValue3 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                            'Loading',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController4,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue4 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value4_', _previousValue4 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                            'Mkt Exp %',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController5,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue5 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value5_', _previousValue5 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                  ],
                ),

                // yaha se naya chalu ho raha hai........................


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                      child: Text(
                        'Enter the below details for pouch :',
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
                            'Cartoon ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController6,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue6 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value6_', _previousValue6 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                            'Packing',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController7,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue7 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value7_', _previousValue7 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                            'Filling',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController8,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue8 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value8_', _previousValue8 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                            'Loading',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController9,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue9 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value9_', _previousValue9 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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
                            'Mkt Exp %',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            height: 40,
                            child: TextFormField(
                              controller: textController10,
                              onChanged: (String? value) {
                                setState(() {
                                  _previousValue10 = value;
                                });
                                _prefs.then((prefs) {
                                  prefs.setString(
                                      'previous_value10_', _previousValue10 ?? '');
                                });
                              },
                              textAlign: TextAlign.center,
                              textAlignVertical: TextAlignVertical.center,
                              autofocus: true,
                              obscureText: false,
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color(0xFFFA9ED1),
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

                          cartoon = double.parse(textController1!.text);
                          packing = double.parse(textController2!.text);
                          filling = double.parse(textController3!.text);
                          loading = double.parse(textController4!.text);
                          mkt = double.parse(textController5!.text);

                          cartoonP = double.parse(textController6!.text);
                          packingP = double.parse(textController7!.text);
                          fillingP = double.parse(textController8!.text);
                          loadingP = double.parse(textController9!.text);
                          mktP = double.parse(textController10!.text);

                          Navigator.of(context).pushNamed('/respage');
                        },
                        label: Container(
                            width: 130,
                            height: 40,
                            alignment: Alignment.center,
                            child: Text('Next')),
                        icon: Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}

