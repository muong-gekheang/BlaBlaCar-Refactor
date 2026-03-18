import 'package:blabla/ui/screens/home/home_screen.dart';
import 'package:blabla/ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:nested/nested.dart';


void mainCommon(List<SingleChildWidget> providers) {
  runApp(
    MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: blaTheme,
        home: Scaffold(
          body: HomeScreen(),
        ),
      ),
    ),
  );
}
