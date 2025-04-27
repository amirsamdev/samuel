import 'dart:convert';
import 'dart:math';
import 'dart:ui';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

PageController pageController = PageController();
SideMenuController sideMenu = SideMenuController();
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JsonExample(),
    );
  }
}

class JsonExample extends StatefulWidget {
  @override
  _JsonExampleState createState() => _JsonExampleState();
}

class _JsonExampleState extends State<JsonExample> {


  @override
  void initState() {
    // Connect SideMenuController and PageController together
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }
var child = [
  Image.asset('as/f3.png'),
  Image.asset('as/f2.png'),
  Image.asset('as/f1.png'),


];
List<SideMenuItem> items = [
  SideMenuItem(
    title: 'Dashboard',
    onTap: (index, _) {
      sideMenu.changePage(index);
    },
    icon: Icon(Icons.home),
    badgeContent: Text(
      '3',
      style: TextStyle(color: Colors.white),
    ),
  ),
  SideMenuItem(
    title: 'Exit',
    onTap: (index, _){},
    icon: Icon(Icons.exit_to_app),
  ),
];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        home:

      Scaffold(      extendBodyBehindAppBar: true,

        appBar: AppBar(systemOverlayStyle: SystemChrome.latestStyle,
          leading:

            Align(child:  IconButton(onPressed: (){}, icon:Icon(Icons.search,size: 34,color: Colors.white60,)
      ,alignment: Alignment.topLeft,


    )

          ),

          actions: [ IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer(); // Open the right drawer
             },
          ),],
          title: AutoSizeText("خوش آمدید",style: GoogleFonts.vazirmatn(color:Colors.white),),

          backgroundColor: Colors.transparent,elevation: 0,
centerTitle: true,
        ),
          key: _scaffoldKey,
          endDrawer: Drawer(backgroundColor: Colors.white,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xff355342)
                  ),
                  child: Text(
                    'Menu Header',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    // Handle the tap
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    // Handle the tap
                    Navigator.pop(context); // Close the drawer
                  },
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help'),
                  onTap: () {
                    // Handle the tap
                    Navigator.pop(context); // Close the drawer
                  },
                ),
              ],
            ),
          ),
backgroundColor: Colors.grey,
      body:  Container(  padding: EdgeInsets.all(0),width: MediaQuery.of(context).size.width
          ,height: double.infinity, decoration:   BoxDecoration(image: DecorationImage(filterQuality: FilterQuality.low,opacity:0.2,alignment: Alignment.bottomCenter,image: AssetImage("as/game.png")),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff222222),
                Color(0xff2b2b2b),
                Color(0xff164a27),

                Color(0xff355342),

              ],
              stops: [0.0, 0.35, 1,1.6],
            ),
          ),

    child:

        Flexible(flex: 2,child:




        Column(
            children: [
              SizedBox(height: 140),
SingleChildScrollView(child: Column(children: [
              Row(children: [
                SizedBox(width: 20,),

                Container(
  width: 140,
  height: 160,

  decoration:   BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(16)),

    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff355342),
        Color(0xff3c3c3c),
        Color(0xff393939),   ],
        stops: [0.4, 0.64, 0.8],         tileMode: TileMode.clamp
    ),
  ),

  child: Stack(fit: StackFit.expand, children: [

    Padding(padding:EdgeInsets.fromLTRB(50, 20, 0, 0) ,child:AutoSizeText("! بانک بازی",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 16),)),
    Padding(padding: EdgeInsets.fromLTRB(55, 56, 0, 0),child: Image.asset("as/f12.png" ,width: 87,

      height: 87,
    )),
    Padding(padding:EdgeInsets.fromLTRB(6,45, 15, 0) ,child:AutoSizeText("! بهترین بازی ها",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 10),)),

  ],),
                //                   enlargeCenterPage: true,

),
                SizedBox(width: 20,),
                Container(
                  width: 140,
                  height: 160,

                  decoration:   BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),

                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff355342),
                          Color(0xff3c3c3c),
                          Color(0xff393939),   ],
                        stops: [0.4, 0.64, 0.8],                         tileMode: TileMode.clamp
                    ),
                  ),

                  child: Stack(fit: StackFit.expand, children: [

                    Padding(padding:EdgeInsets.fromLTRB(50, 20, 0, 0) ,child:AutoSizeText("!روم جایزه دار",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 16),)),
                    Padding(padding: EdgeInsets.fromLTRB(55, 56, 0, 0),child: Image.asset("as/f11.png" ,width: 87,

                      height: 87,
                    )),
                    Padding(padding:EdgeInsets.fromLTRB(6,45, 15, 0) ,child:AutoSizeText("! برگزاری روم جایزه دار",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 10),)),

                  ],),
                  //                   enlargeCenterPage: true,

                ),
                SizedBox(width: 20,),Container(
                  width: 140,
                  height: 160,

                  decoration:   BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),

                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff355342),
                          Color(0xff3c3c3c),
                          Color(0xff393939),   ],
                        stops: [0.4, 0.64, 0.8],                         tileMode: TileMode.clamp
                    ),
                  ),

                  child:  Stack(fit: StackFit.expand, children: [

                  Padding(padding:EdgeInsets.fromLTRB(45, 20, 0, 0) ,child:AutoSizeText("!لذت بازی کردن",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 14),)),
  Padding(padding: EdgeInsets.fromLTRB(55, 56, 0, 0),child: Image.asset("as/f13.png" ,width: 87,

    height: 87,
  )),
  Padding(padding:EdgeInsets.fromLTRB(10,45, 0, 0) ,child:AutoSizeText("تجربه دیگری از بازی کردن",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 10),)),

  //                   enlargeCenterPage: true,

              ] )),
                SizedBox(width: 20,),Container(
                  width: 140,
                  height: 160,

                  decoration:   BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),

                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff355342),
                          Color(0xff3c3c3c),
                          Color(0xff393939), ],
                        stops: [0.4, 0.64, 0.8],                         tileMode: TileMode.clamp
                    ),
                  ),

                  padding: const EdgeInsets.all(32),
                  child: Text("data"),
                  //                   enlargeCenterPage: true,

                ),
                SizedBox(width: 20,),Container(
                  width: 140,
                  height: 160,

                  decoration:   BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(16)),

                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff355342),
                          Color(0xff3c3c3c),
                          Color(0xff303030),
                             ],
                        stops: [0.4, 0.64, 0.8],                        tileMode: TileMode.clamp
                    ),
                  ),

                  padding: const EdgeInsets.all(32),
                  child: Text("data"),
                  //                   enlargeCenterPage: true,

                ),
                SizedBox(width: 10,),
              ],),],)
,scrollDirection: Axis.horizontal,),

SizedBox(height: 45,),
Container(
  width: MediaQuery.of(context).size.width -50,
  height: MediaQuery.of(context).size.height /
  5.5,
  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(33)),

    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        transform: GradientRotation(pi/-12),

        colors: [
          Color(0xff355342),

          Color(0xff3c3c3c),

        ],
      stops: [0.0, 0.9, ],
    ),  ),
child: Stack(children: [
  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment:CrossAxisAlignment.center,children: [
    Padding(padding: EdgeInsets.only(top: 25,left: 27),
      child: Image.asset("as/test.jfif",height: 80,width: 80,),
    ),

    Padding(padding: EdgeInsets.only(bottom: 20,right: 20),
      child: AutoSizeText("  katan zero : بازی منتخب ",style: GoogleFonts.vazirmatn(color: Colors.white),),
    ),

  ],),
  Padding(padding: EdgeInsets.only(top: 55,left: 170),
    child: AutoSizeText("ژانر : پیکسلی ، هک اند اسلش ",style: GoogleFonts.vazirmatn(color: Colors.white,fontSize: 11),),
  ),
  Padding(padding: EdgeInsets.only(left: 190,top: 97),
    child: ElevatedButton(onPressed: (){},child: AutoSizeText("توضیحات",style: GoogleFonts.vazirmatn(color: Colors.grey[200]),)
      ,

style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF188465),
elevation: 3,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(60)))
),

    ),
  ),

],),
),


          SizedBox(height: 25,),

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,mainAxisSize: MainAxisSize.max,
  children: [
    Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),child: AutoSizeText("بیشتر",style: GoogleFonts.vazirmatn(color: Color(
        0xff289a4e),fontSize: 19),)),

 Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 0),child: AutoSizeText("بازی‌ها",style: GoogleFonts.vazirmatn(color: Color(0xffC2C2C2),fontSize: 19),)),

],),
    SizedBox(height: MediaQuery.of(context).size.height/2.9,child:
    SingleChildScrollView(physics:ScrollPhysics(),child:Column(children: [
              SizedBox(height: 27,),

              Column(
                children: [
                  Container(
                    height: 120 ,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 80, right: 20, top: 0, bottom: 40), // کاهش padding
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(22),
                            child: Image.asset("as/pubg.png",width: 90,height: 90,),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, right: 135, top: 0, bottom: 76), // کاهش padding
                          child: AutoSizeText(
                            "پابجی موبایل",
                            style: GoogleFonts.vazirmatn(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, right: 135, top: 11, bottom: 10), // کاهش padding
                          child: AutoSizeText(
                            "برای تجربه بهتر این بازی کلیک کنید",
                            style: GoogleFonts.vazirmatn(color: Colors.white70, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 80, right: 20, top: 0, bottom: 40), // کاهش padding
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("as/cod.png",width: 90,height: 90,),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, right: 135, top: 0, bottom: 76), // کاهش padding
                          child: AutoSizeText(
                            "کالاف دیوتی موبایل",
                            style: GoogleFonts.vazirmatn(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, right: 135, top: 11, bottom: 10), // کاهش padding
                          child: AutoSizeText(
                            "برای تجربه بهتر این بازی کلیک کنید",
                            style: GoogleFonts.vazirmatn(color: Colors.white70, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.zero,
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 80, right: 20, top: 0, bottom: 40), // کاهش padding
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset("as/cod.png",width: 90,height: 90,),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, right: 135, top: 0, bottom: 76), // کاهش padding
                          child: AutoSizeText(
                            "کالاف دیوتی موبایل",
                            style: GoogleFonts.vazirmatn(color: Colors.white, fontSize: 17),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 60, right: 135, top: 11, bottom: 10), // کاهش padding
                          child: AutoSizeText(
                            "برای تجربه بهتر این بازی کلیک کنید",
                            style: GoogleFonts.vazirmatn(color: Colors.white70, fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


SizedBox(height: 51,),
              Container(child: Text("☕ تولید شده با 💙 و ",style: GoogleFonts.vazirmatn(color: Colors.white),),),
              SizedBox(height: 17,),


            ]), )

                ,),

])
        )
      )));
  }
}