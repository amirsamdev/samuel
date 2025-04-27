import 'dart:async';
import 'dart:ui';

import 'package:dns/pages/menu.dart';
import 'package:dns/pages/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adivery/adivery.dart';
import 'package:adivery/adivery_ads.dart';
late String _selectedFont;
int currentIndex = 1;


Future<void> main() async {
  GoogleFonts.pendingFonts([GoogleFonts.poppins,GoogleFonts.vazirmatn]);

  runApp(

     MaterialApp(      useInheritedMediaQuery: true,
     debugShowCheckedModeBanner:false,home:mainmenu()

    // Wrap your app
    )


        );}

class mainmenu extends StatefulWidget {
  const mainmenu({super.key});

  @override
  State<mainmenu> createState() => _mainmenuState();
}

class _mainmenuState extends State<mainmenu> {
  late String name;


  @override
  void initState() {
    AdiveryPlugin.initialize("c157ef0a-e5f5-4c22-abd0-3427f6dcc538");


  }


@override
  Widget build(BuildContext context) {
    return MaterialApp(

        useInheritedMediaQuery: true,


        debugShowCheckedModeBanner:false,title: "swiftDNS",home:
      Scaffold(
      extendBodyBehindAppBar: true,
          body:MyApp()

          ));
  }
  }