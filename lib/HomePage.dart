import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 18, right: 18, top: 34),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _contentHeader(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Account Overview',
              style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xff3A4276),
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            _contentOverView(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Send Money',style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xff3A4276),
                fontWeight: FontWeight.w800,
              ),),
              Image.asset('assets/images/bar_code.png',
              width: 16,
              )
              ],
            ),
            SizedBox(height:16),
            _contentSendMoney(),
             SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Services',style: GoogleFonts.poppins(
                fontSize: 15,
                color: Color(0xff3A4276),
                fontWeight: FontWeight.w800,
              ),),
              Image.asset('assets/images/adjust.png',
              width: 16,
              )
              ],
            ),
            SizedBox(height: 16,),
            _contentServices(context),
                      ],
                    ),
                    
                  ),
                );
              }
            
              Widget _contentHeader() {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/logo.png',
                          width: 34,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          'eWalle',
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            color: Color(0xff3A4276),
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/menu.png',
                      width: 16,
                    )
                  ],
                );
              }
            
              Widget _contentOverView() {
                return Container(
                  padding: EdgeInsets.only(left: 18, right: 18, top: 22, bottom: 22),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF1F3F6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '20,600',
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              color: Color(0xff171822),
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Current Balance',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Color(0xff3A4276).withOpacity(.4),
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      RaisedButton(
                        onPressed: () {},
                        elevation: 0,
                        padding: EdgeInsets.all(12),
                        child: Text(
                          '+',
                          style: TextStyle(
                            fontSize: 22,
                            color: Color(0xff1B1D28),
                          ),
                        ),
                        shape: CircleBorder(),
                        color: Color(0xffFFAC30),
                      )
                    ],
                  ),
                );
              }
            
             Widget _contentSendMoney() {
               return Container(
                 height: 100,
                 child: ListView(
                   scrollDirection: Axis.horizontal,
                   children: <Widget>[
                     Container(
                       width: 80,
                       padding: EdgeInsets.all(18),
                       child: RaisedButton(
                         onPressed: (){},
                         elevation: 0,
                         padding: EdgeInsets.all(12),
                         child: Text('+', style: TextStyle(
                            fontSize: 22,
                            color: Color(0xff1B1D28),
                          ),),
                         shape: CircleBorder(),
                         color: Color(0xffFFAC30),
                         ),
                     ),
                     Container(
                       margin: EdgeInsets.only(right:10),
                       padding: EdgeInsets.all(16),
                       width: 80,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Color(0xffF1F3F6)
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Container(
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                 color: Color(0xffD8D9E4)
                               )
                             ),
                             child: Image.asset(
                               'assets/images/avatar_1.png',
                               width: 36,
                             ),
                           ),
                           Text(
                             'Mike',
                             style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xff3A4276),
                              fontWeight: FontWeight.w500,
                            ),
                           )
                         ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(right:10),
                       padding: EdgeInsets.all(16),
                       width: 80,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Color(0xffF1F3F6)
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Container(
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                 color: Color(0xffD8D9E4)
                               )
                             ),
                             child: Image.asset(
                               'assets/images/avatar_2.png',
                               width: 36,
                             ),
                           ),
                           Text(
                             'Joseph',
                             style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xff3A4276),
                              fontWeight: FontWeight.w500,
                            ),
                           )
                         ],
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.only(right:10),
                       padding: EdgeInsets.all(16),
                       width: 80,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Color(0xffF1F3F6)
                       ),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           Container(
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               border: Border.all(
                                 color: Color(0xffD8D9E4)
                               )
                             ),
                             child: Image.asset(
                               'assets/images/avatar_3.png',
                               width: 36,
                             ),
                           ),
                           Text(
                             'Ashley',
                             style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xff3A4276),
                              fontWeight: FontWeight.w500,
                            ),
                           )
                         ],
                       ),
                     )
                   ],
                 ),
               );
              }

 Widget _contentServices(BuildContext context) {
   List<ModelServices> listServices =  List();

     listServices.add(new ModelServices(title: "Send\nMoney", img: "send.png"));
  listServices
      .add(new ModelServices(title: "Receive\nMoney", img: "receive.png"));
  listServices
      .add(new ModelServices(title: "Mobile\nPrepaid", img: "mobile.png"));
  listServices
      .add(new ModelServices(title: "Electricity\nBill", img: "bill.png"));
  listServices
      .add(new ModelServices(title: "Cashback\nOffer", img: "cashback.png"));
  listServices
      .add(new ModelServices(title: "Movie\nTickets", img: "movie.png"));
  listServices
      .add(new ModelServices(title: "Flight\nTickets", img: "flight.png"));
  listServices.add(new ModelServices(title: "More\nOptions", img: "menu.png"));
 
 return Container(
width: double.infinity,
height: 260,
child: GridView.count(
  crossAxisCount: 4,
  childAspectRatio: MediaQuery.of(context).size.width/
  (MediaQuery.of(context).size.height /1.5),
  children: listServices.map((value) {
   return GestureDetector(
     onTap: (){
       print('${value.title}');
     },
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         Container(
           width: 50,
           height: 50,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             color: Color(0xffF1F3F6)
           ),
           child: SizedBox(
             height: 24,
             width: 24,
             child: Image.asset('assets/images/${value.img}'),
           ),
         ),
         SizedBox(
           height: 14,
         ),
         Text(
           '${value.title}',
           textAlign: TextAlign.center,
           style: GoogleFonts.poppins(
             fontSize: 12,
             color: Color(0xff3A4276),
             fontWeight: FontWeight.w500

           ),
         )
       ],
     ),
   );
  }).toList(),
  ),
  
 );
 }
}

class ModelServices{
  String title,img;
  ModelServices({this.title, this.img});
}