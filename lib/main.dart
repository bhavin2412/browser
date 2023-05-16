import 'package:browser/view/web_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'provider/web_provider.dart';

void main()
{
  runApp(
      Sizer(builder: (context, orientation, deviceType) {
        return ChangeNotifierProvider(
          create: (context) => WebProvider(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              '/':(context) =>WebScreen(),
            },
          ),
        );
      },)
  );
}