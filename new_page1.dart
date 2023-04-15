import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cost_application/firebase_options.dart';
import 'package:cost_application/new_page3.dart';
import 'package:cost_application/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(newapp());
}

class newapp extends StatelessWidget {
  const newapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      routes: {

        '/putv': (context) => Appone(),
      },
    );
  }
}

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  static final String id = "text_form_field";

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  String? firstName;
  CollectionReference users =
      FirebaseFirestore.instance.collection('CostSheet');

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
  String? _previousValue11;
  String? _previousValue12;
  String? _previousValue13;
  String? _previousValue14;

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
  final textController11 = TextEditingController();
  final textController12 = TextEditingController();
  final textController13 = TextEditingController();
  final textController14 = TextEditingController();


  @override
  void initState() {
    super.initState();
    //firstName = UserSimplePreferences.getUsername() ?? '';

    _prefs.then((prefs) {
      _previousValue1 = prefs.getString('previous_value1');
      textController1.text = _previousValue1 ?? '';

      _previousValue2 = prefs.getString('previous_value2');
      textController2.text = _previousValue2 ?? '';

      _previousValue3 = prefs.getString('previous_value3');
      textController3.text = _previousValue3 ?? '';

      _previousValue4 = prefs.getString('previous_value4');
      textController4.text = _previousValue4 ?? '';

      _previousValue5 = prefs.getString('previous_value5');
      textController5.text = _previousValue5 ?? '';

      _previousValue6 = prefs.getString('previous_value6');
      textController6.text = _previousValue6 ?? '';

      _previousValue7 = prefs.getString('previous_value7');
      textController7.text = _previousValue7 ?? '';

      _previousValue8 = prefs.getString('previous_value8');
      textController8.text = _previousValue8 ?? '';

      _previousValue9 = prefs.getString('previous_value9');
      textController9.text = _previousValue9?? '';

      _previousValue10 = prefs.getString('previous_value10');
      textController10.text = _previousValue10 ?? '';

      _previousValue11 = prefs.getString('previous_value11');
      textController11.text = _previousValue11 ?? '';

      _previousValue12 = prefs.getString('previous_value12');
      textController12.text = _previousValue12 ?? '';

      _previousValue13 = prefs.getString('previous_value13');
      textController13.text = _previousValue13 ?? '';

      _previousValue14 = prefs.getString('previous_value14');
      textController14.text = _previousValue14 ?? '';

    });
  }

  // int? secondName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.deepPurple[100],
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                  // key: _formKey,
                  child: Text(
                    'Enter  The Freight Rates For Mathura ',
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
                        child: TextField(
                          controller: textController1,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue1 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value1', _previousValue1 ?? '');
                            });
                          },
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController2,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue2 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value2', _previousValue2 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController3,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue3 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value3', _previousValue3 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController4,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue4 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value4', _previousValue4 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController5,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue5 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value5', _previousValue5 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController6,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue6 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value6', _previousValue6 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController7,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue7 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value7', _previousValue7 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController8,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue8 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value8', _previousValue8 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController9,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue9 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value9', _previousValue9 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController10,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue10 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value10', _previousValue10 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController11,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue11 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value11', _previousValue11 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController12,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue12 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value12', _previousValue12 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController13,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue13 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value13', _previousValue13 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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
                          controller: textController14,
                          onChanged: (String? value) {
                            setState(() {
                              _previousValue14 = value;
                            });
                            _prefs.then((prefs) {
                              prefs.setString(
                                  'previous_value14', _previousValue14 ?? '');
                            });
                          },
                          keyboardType: TextInputType.number,
                          autofillHints: [AutofillHints.givenName],
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.center,
                          autofocus: true,
                          obscureText: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFAFAFAF),
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

                      frieghtUP = double.parse(textController1.text);
                      frieghtMP = double.parse(textController2.text);
                      frieghtRAJ = double.parse(textController3.text);
                      frieghtHAR = double.parse(textController4.text);
                      frieghtPUN = double.parse(textController5.text);
                      frieghtORR = double.parse(textController6.text);
                      frieghtJHA = double.parse(textController7.text);
                      frieghtCHH = double.parse(textController8.text);
                      frieghtWB = double.parse(textController9.text);
                      frieghtAS = double.parse(textController10.text);
                      frieghtUK = double.parse(textController11.text);
                      frieghtDEL = double.parse(textController12.text);
                      frieghtHIM = double.parse(textController13.text);
                      frieghtJK = double.parse(textController14.text);

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

                firstName == null ? Text("") : Text(firstName!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
