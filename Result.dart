import 'package:cost_application/main.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:screenshot/screenshot.dart';
import 'package:cost_application/new_page1.dart';
import 'package:cost_application/new_page2.dart';
import 'package:cost_application/new_page3.dart';

import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var chk = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  CollectionReference users =
      FirebaseFirestore.instance.collection('CostSheet');
  List<double> rates = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0,0,0];
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
  List<String> place = [
    'Uttar Pradesh',
    'Madhya Pradesh',
    'Orissa',
    'Jharkhand',
    'Punjab',
    'Rajasthan',
    'Uttarakhand',
    'Uttar Pradesh',
    'Gujrat',
    'Chhattisgarh',
    'Maharashtra',
    'Delhi NCR',
    'J & K',
    'Assam',
    'Haryana',
  ];

  refreshRates() {

    KGMustard15ltr = (KG_Mustard_input) / 10;
    KGMustard15ltr = (KGMustard15ltr + rates[getidx()]) * 15;
    KGMustard15ltr = KGMustard15ltr + cartoon + packing +filling + loading;
    KGMustard15ltr = KGMustard15ltr + KGMustard15ltr * mkt / 100;
    KGMustard15ltr = KGMustard15ltr + KGMustard15ltr * 5 / 100;

    //KG Mustard 1 ltr pouch
    KGMustard1ltrPouch = (KG_Mustard_input) / 10 ;
    KGMustard1ltrPouch = (KGMustard1ltrPouch +rates[getidx()])*0.91;
    KGMustard1ltrPouch = KGMustard1ltrPouch + cartoonP + packingP +fillingP + loadingP;
    KGMustard1ltrPouch = KGMustard1ltrPouch + KGMustard1ltrPouch * mktP/ 100;
    KGMustard1ltrPouch = KGMustard1ltrPouch + KGMustard1ltrPouch * 5 / 100;

    // Palm15ltr =
    //     Palm15ltr_ + 15 * rates[getidx()] + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
    // KGMustard15ltr =
    //     KGMustard15ltr_ + 15 * rates[getidx()] + 111 + 0.7 + 4.13 + 1 + 8 + 2;
    // Soya15ltr =
    //     Soya15ltr_ + 15 * rates[getidx()] + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
    // EMustard15ltr =
    //     EMustard15ltr_ + 15 * rates[getidx()] + 111 + 0.7 + 4.13 + 1 + 8 + 2;
    //
    // Palm15ltr = Palm15ltr + Palm15ltr * 1.5 / 100;
    // KGMustard15ltr = KGMustard15ltr + KGMustard15ltr * 1.5 / 100;
    // Soya15ltr = Soya15ltr + Soya15ltr * 1.5 / 100;
    // EMustard15ltr = EMustard15ltr + EMustard15ltr * 1.5 / 100;
  }

  @override
  void initState() {
    super.initState();
    //KGMustard15ltr_
    //KGMustard
    KGMustard15ltr = (KG_Mustard_input) / 10;
    KGMustard15ltr = (KGMustard15ltr + frieghtUP) * 15;
    KGMustard15ltr = KGMustard15ltr + cartoon + packing +filling + loading;
    KGMustard15ltr = KGMustard15ltr + KGMustard15ltr * mkt / 100;
    KGMustard15ltr = KGMustard15ltr + KGMustard15ltr * 5 / 100;

    //KG Mustard 1 ltr pouch
    KGMustard1ltrPouch = (KG_Mustard_input) / 10 ;
    KGMustard1ltrPouch = (KGMustard1ltrPouch +frieghtUP)*0.91;
    KGMustard1ltrPouch = KGMustard1ltrPouch + cartoonP + packingP +fillingP + loadingP;
    KGMustard1ltrPouch = KGMustard1ltrPouch + KGMustard1ltrPouch * mktP / 100;
    KGMustard1ltrPouch = KGMustard1ltrPouch + KGMustard1ltrPouch * 5 / 100;


    users.doc('VdD1KmsYSvjhVDyx0RYw').get().then((data) {

        setState(() {
        rates[0] = frieghtUP;
        rates[1] = frieghtMP;
        rates[2] = frieghtRAJ;
        rates[3] = frieghtHAR;
        rates[4] = frieghtPUN;
        rates[5] = frieghtORR;
        rates[6] = frieghtJHA;
        rates[7] = frieghtCHH;
        rates[8] = frieghtWB;
        rates[9] = frieghtAS;
        // rates[10] = frieghtUK;
        // rates[11]= frieghtDEL;
        // rates[12]= frieghtHIM;
        // rates[13]= frieghtJK;

        Palm15ltr_ = data['Palm15ltr']; // palm input
        KGMustard15ltr_ = 1410;//data['KGMustard15ltr']; // Kacchi ghani input
        Soya15ltr_ = data['Soya15ltr']; // soya input
        EMustard15ltr_ = data['EMustard15ltr'];

        // mustard input
        var Packing= data['Packing'];
        var Frieghtg=data['Frieghtg'];
        var Label= data['Label'];
        var cartoon=data["Cartoon"];
        var cap=data['Cap'];
        var  tikli=data['Tikli'];
        var tin_top=data['Tin Top'];
        var stp_roll= data['Strap Roll'];
        var shrill=data['Shrill'];
        var tape=data['Tape'];
        var Wad=data['Wad'];
        var Filling=data['Filling'];
        var Loading=data['Loading'];
        //Editted from here--------------------------------------------------------------------------------------
        // palm 15 ltr calculations
        // Palm15ltr = (Palm15ltr_) / 10;
        // Palm15ltr = (Palm15ltr + Frieghtg) * 15;
        // Palm15ltr = Palm15ltr +116 + 1.65 + 0.70 + 4.72 + 8 + 2;
        // Palm15ltr = Palm15ltr + Palm15ltr * 1.5 / 100;
        // Palm15ltr = Palm15ltr + Palm15ltr * 5 / 100;
        //
        // // palm 1 ltr pouch
        // Palm1ltrPouch = (Palm15ltr_) / 10 + 4;
        // Palm1ltrPouch = Palm1ltrPouch * 0.9;
        // Palm1ltrPouch = Palm1ltrPouch + 1.90 + 1.76 + 0.08 + 0.25 + 0.17;
        // Palm1ltrPouch = Palm1ltrPouch + Palm1ltrPouch * 1.5 / 100;
        // Palm1ltrPouch = Palm1ltrPouch + Palm1ltrPouch * 5 / 100;
        //
        // // palm 15 ltr tin
        // Palm15ltrTin = (Palm15ltr_) / 10 + 4;
        // Palm15ltrTin = Palm15ltrTin * 0.91 * 15;
        // Palm15ltrTin = Palm15ltrTin + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
        // Palm15ltrTin = Palm15ltrTin + Palm15ltrTin * 1.5 / 100;
        // Palm15ltrTin = Palm15ltrTin + Palm15ltrTin * 5 / 100;

        // //KGMustard
        // KGMustard15ltr = (KGMustard15ltr_) / 10;
        // KGMustard15ltr = (KGMustard15ltr + frieghtM) * 15;
        // KGMustard15ltr = KGMustard15ltr + cartoon + packing +filling + loading+ mkt;
        // //KGMustard15ltr = KGMustard15ltr + KGMustard15ltr * 1.5 / 100;
        // KGMustard15ltr = KGMustard15ltr + KGMustard15ltr * 5 / 100;
        //
        // //KG Mustard 1 ltr pouch
        // KGMustard1ltrPouch = (KGMustard15ltr_) / 10 ;
        // KGMustard1ltrPouch = (KGMustard1ltrPouch +frieghtM)*0.91;
        // KGMustard1ltrPouch = KGMustard1ltrPouch + cartoon + packing +filling + loading+ mkt;
        // //KGMustard1ltrPouch = KGMustard1ltrPouch + KGMustard1ltrPouch * 1.5 / 100;
        // KGMustard1ltrPouch = KGMustard1ltrPouch + KGMustard1ltrPouch * 5 / 100;



        //KGMustard 15 ltr tin
        // KGMustard15ltrTin = (KGMustard15ltr_) / 10 + 2.5;
        // KGMustard15ltrTin = KGMustard15ltrTin * 0.91 * 15;
        // KGMustard15ltrTin = KGMustard15ltrTin + 111 + 0.7 + 4.13 + 1 + 8 + 2;
        // KGMustard15ltrTin = KGMustard15ltrTin + KGMustard15ltrTin * 1.5 / 100;
        // KGMustard15ltrTin = KGMustard15ltrTin + KGMustard15ltrTin * 5 / 100;

        //EMustard
        // EMustard15ltr = (EMustard15ltr_) / 10;
        // EMustard15ltr = (EMustard15ltr + 2.5) * 15;
        // EMustard15ltr = EMustard15ltr + 111 + 0.7 + 4.13 + 1 + 8 + 2;
        // EMustard15ltr = EMustard15ltr + EMustard15ltr * 1.5 / 100;
        // EMustard15ltr = EMustard15ltr + EMustard15ltr * 5 / 100;
        //
        // //E Mustard 1 ltr pouch
        // EMustard1ltrPouch = (EMustard15ltr_) / 10 + 2.5;
        // EMustard1ltrPouch = EMustard1ltrPouch * 0.91;
        // EMustard1ltrPouch =
        //     EMustard1ltrPouch + 1.95 + 1.76 + 0.08 + 0.25 + 0.17;
        // EMustard1ltrPouch = EMustard1ltrPouch + EMustard1ltrPouch * 1.5 / 100;
        // EMustard1ltrPouch = EMustard1ltrPouch + EMustard1ltrPouch * 5 / 100;
        //
        // //EMustard 15 ltr tin
        // EMustard15ltrTin = (KGMustard15ltr_) / 10 + 2.5;
        // EMustard15ltrTin = EMustard15ltrTin * 0.91 * 15;
        // EMustard15ltrTin = EMustard15ltrTin + 111 + 0.7 + 4.13 + 1 + 8 + 2;
        // EMustard15ltrTin = EMustard15ltrTin + EMustard15ltrTin * 1.5 / 100;
        // EMustard15ltrTin = EMustard15ltrTin + EMustard15ltrTin * 5 / 100;
        //
        // // soya
        //
        // Soya15ltr = (Soya15ltr_) / 10;
        // Soya15ltr = (Soya15ltr + 4) * 15;
        // Soya15ltr = Soya15ltr + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
        // Soya15ltr = Soya15ltr + Soya15ltr * 1.5 / 100;
        // Soya15ltr = Soya15ltr + Soya15ltr * 5 / 100;
        //
        // //Soya 1 ltr pouch
        // Soya1ltrPouch = (Soya15ltr_) / 10 + 4;
        // Soya1ltrPouch = Soya1ltrPouch * 0.91;
        // Soya1ltrPouch = Soya1ltrPouch + 1.90 + 1.76 + 0.08 + 0.25 + 0.17;
        // Soya1ltrPouch = Soya1ltrPouch + Soya1ltrPouch * 1.5 / 100;
        // Soya1ltrPouch = Soya1ltrPouch + Soya1ltrPouch * 5 / 100;
        //
        // // soya 15 ltr tin
        // Soya15ltrTin = (Soya15ltr_) / 10 + 4;
        // Soya15ltrTin = Soya15ltrTin * 0.91 * 15;
        // Soya15ltrTin = Soya15ltrTin + 116 + 1.65 + 0.7 + 4.72 + 1 + 8 + 2;
        // Soya15ltrTin = Soya15ltrTin + Soya15ltrTin * 1.5 / 100;
        // Soya15ltrTin = Soya15ltrTin + Soya15ltrTin * 5 / 100;

//Upto here---------------------------------------------------------------------------------------------------------------------------------------------
      });
    }).catchError((err) {
      print(err);
    });
  }

  ScreenshotController screenshotController = ScreenshotController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Select State",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                  ),
                ),
                SwitchListTile(
                  value: chk[0],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(0);
                    })
                  },
                  title: Text(
                    'Uttar Pradesh',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[1],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(1);
                    })
                  },
                  title: Text(
                    'Madhya Pradesh',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[2],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(2);
                    })
                  },
                  title: Text(
                    'Rajasthan',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[3],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(3);
                    })
                  },
                  title: Text(
                    'Haryana',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[4],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(4);
                    })
                  },
                  title: Text(
                    'Punjab',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[5],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(5);
                    })
                  },
                  title: Text(
                    'Orrisa',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[6],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(6);
                    })
                  },
                  title: Text(
                    'Jharkhand',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[7],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(7);
                    })
                  },
                  title: Text(
                    'Chhattisgarh',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[8],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(8);
                    })
                  },
                  title: Text(
                    'West Bengal',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                SwitchListTile(
                  value: chk[9],
                  onChanged: (newValue) => {
                    setState(() {
                      setArr(9);
                    })
                  },
                  title: Text(
                    'Assam',
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                // SwitchListTile(
                //   value: chk[10],
                //   onChanged: (newValue) => {
                //     setState(() {
                //       setArr(10);
                //     })
                //   },
                //   title: Text(
                //     'Uttarakhand',
                //   ),
                //   tileColor: Color(0xFFF5F5F5),
                //   dense: false,
                //   controlAffinity: ListTileControlAffinity.trailing,
                // ),
                // SwitchListTile(
                //   value: chk[11],
                //   onChanged: (newValue) => {
                //     setState(() {
                //       setArr(11);
                //     })
                //   },
                //   title: Text(
                //     'Delhi NCR',
                //   ),
                //   tileColor: Color(0xFFF5F5F5),
                //   dense: false,
                //   controlAffinity: ListTileControlAffinity.trailing,
                // ),
                // SwitchListTile(
                //   value: chk[12],
                //   onChanged: (newValue) => {
                //     setState(() {
                //       setArr(12);
                //     })
                //   },
                //   title: Text(
                //     'Himachal',
                //   ),
                //   tileColor: Color(0xFFF5F5F5),
                //   dense: false,
                //   controlAffinity: ListTileControlAffinity.trailing,
                // ),
                // SwitchListTile(
                //   value: chk[13],
                //   onChanged: (newValue) => {
                //     setState(() {
                //       setArr(13);
                //     })
                //   },
                //   title: Text(
                //     'J & K',
                //   ),
                //   tileColor: Color(0xFFF5F5F5),
                //   dense: false,
                //   controlAffinity: ListTileControlAffinity.trailing,
                // ),
                Screenshot(
                  controller: screenshotController,
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          SizedBox(height: 10),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 64,
                                  height: 64,
                                  child: Image(
                                      image:
                                          Image.asset("assets/sb.png").image),
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    "Rates on ${DateFormat('dd/MM/yyyy').format(DateTime.now())}}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                //           // Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //     "Soya Oil",
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          //  Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //       "15 Kg Tin - ${Soya15ltr.toStringAsFixed(2)}"),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          // Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //       "1 Ltr Pouch - ${Soya1ltrPouch.toStringAsFixed(2)}"),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          // Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //     "Palm Oil",
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          // Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //       "15 Kg Tin - ${Palm15ltr.toStringAsFixed(2)}"),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          // Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //       "1 Ltr Pouch - ${Palm1ltrPouch.toStringAsFixed(2)}"),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          // Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //     "Mustard Oil",
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          // Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //       "15 Kg Tin - ${EMustard15ltr.toStringAsFixed(2)}"),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          // Container(
                          //   margin: EdgeInsets.symmetric(vertical: 5),
                          //   child: Text(
                          //       "1 Ltr Pouch - ${EMustard1ltrPouch.toStringAsFixed(2)}"),
                          //   alignment: Alignment.centerLeft,
                          // ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              "Kacchhi Ghani Mustard Oil",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                                "15 Kg Tin - ${KGMustard15ltr.toStringAsFixed(2)}"),
                            alignment: Alignment.centerLeft,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                                "1 Ltr Pouch - ${KGMustard1ltrPouch.toStringAsFixed(2)}"),
                            alignment: Alignment.centerLeft,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 64,
                                height: 64,
                                child: Image(
                                    image: Image.asset("assets/rg.png").image),
                              ),
                              SizedBox(
                                width: 104,
                                height: 104,
                                child: Image(
                                    image: Image.asset("assets/Logo.png").image),
                              ),
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: Image(
                                    image: Image.asset("assets/bn.png").image),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    "Take ScreenShot",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: (() {
                    screenshotController
                        .capture(delay: Duration(milliseconds: 10))
                        .then((capturedImage) async {
                      ShowCapturedWidget(context, capturedImage!);
                    }).catchError((onError) {
                      print(onError);
                    });
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setArr(int i) {
    for (int j = 0; j < i; j++) chk[j] = false;
    chk[i] = true;
    for (int j = i + 1; j < 11; j++) chk[j] = false;
    refreshRates();
  }

  int getidx() {
    for (int i = 0; i < 11; i++) {
      if (chk[i])
        return i;
    }
    return -1;
  }

  Future<dynamic> ShowCapturedWidget(
      BuildContext context, Uint8List capturedImage) {
    return showDialog(
      useSafeArea: false,
      context: context,
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text("From SB Daily Rates"),
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () async {
                final tempDir = await getTemporaryDirectory();
                final path = '${tempDir.path}/image.jpg';
                File(path).writeAsBytesSync(capturedImage);
                Share.shareFiles([path], text: "Screenshot");
              },
            )
          ],
        ),
        body: Center(
            child: capturedImage != null
                ? Image.memory(capturedImage)
                : Container()),
      ),
    );
  }
}
