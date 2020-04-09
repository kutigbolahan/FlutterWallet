import 'package:Ewallet/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignInPage(),
    );
  }
}

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  static DateTime now = DateTime.now();
  String formattedTime = DateFormat('kk:mm:ss').format(now);
  String formattedDate = DateFormat('EEE d MMM').format(now);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/images/bg_home.png'),
              )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    _topContent(),
                    _centerContent(),
                    _bottomContent()
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget _topContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 18, // MediaQuery.of(context).size.height
        ),
        Row(
          children: <Widget>[
            Text(
              formattedTime,
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: Color(0xff1B1D28),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 14,
            ),
            Image.asset('assets/images/cloud.png'),
            SizedBox(
              width: 10,
            ),
            Text(
              '32° C',
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1B1D28),
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          formattedDate,
          style: GoogleFonts.poppins(
            fontSize: 10,
            color: Color(0xff1B1D28),
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

  Widget _centerContent() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('assets/images/logo.png'),
          SizedBox(
            height: 18,
          ),
          Text(
            'eWalle',
            style: GoogleFonts.poppins(
              fontSize: 22,
              color: Color(0xff1B1D28),
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'Open An Account For Digital  E-Wallet Solutions.\nInstant Payouts. \n\nJoin For Free.',
            style: GoogleFonts.poppins(
              fontSize: 14,
              height: 1.6,
              color: Color(0xff7b7f9e),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }

  Widget _bottomContent() {
    return Column(
      children: <Widget>[
        MaterialButton(
          elevation: 0,
          color: Color(0xFFFFAC30),
          height: 50,
          minWidth: 200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            'Sign in',
            style: GoogleFonts.poppins(
              fontSize: 15,
              height: 1.6,
              color: Color(0xff212330),
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            print('Click create');
          },
          child: Text(
            'Create an Account',
            style: GoogleFonts.poppins(
              fontSize: 11,
              color: Color(0xff212330),
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
