import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:election_exit_poll_620710671/services/api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/vote_hand.png',
                width: 100.0,
                height: 100.0,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ' EXIT POLL',
                style: GoogleFonts.mitr(fontSize: 20.0,color: Colors.white),),
            ],
          ),
          Expanded(
            child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('เลือกตั้ง อบต.',
                style: GoogleFonts.mitr(fontSize: 20.0,color: Colors.white),),
            ],
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('รายชื่อผู้สมัครรับเลือกตั้ง',
                    style: GoogleFonts.mitr(fontSize: 18.0,color: Colors.white),),
                  Text('นายกองค์การบริหารส่วนตำบลเขาพระ',
                    style: GoogleFonts.mitr(fontSize: 18.0,color: Colors.white),),
                  Text('อำเภอเมืองนครนายก จังหวัดนครนายก',
                    style: GoogleFonts.mitr(fontSize: 18.0,color: Colors.white),),
                ],
              )
            ],
          ),

        Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 15.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.purple,
                                ),
                                child: Text('ดูผล'),
                              )
                          ),
                        ]
                    )
                ),
              ]
              ,
            )
        )
        , ]
    )));
  }
}
