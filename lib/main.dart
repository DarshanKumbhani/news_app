import 'package:flutter/material.dart';
import 'package:news_app/provider/home_pro.dart';

import 'package:news_app/view/home_screen.dart';
import 'package:news_app/view/second.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, ori, type) {
        return ChangeNotifierProvider(
          create: (context) => HomeProvider(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/',
            routes: {
              // '/': (context) => HomePage(),
              '/': (context) => HomePage2(),
            },
          ),
        );
      },
    ),
  );
}
