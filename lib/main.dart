
import 'package:flutter/material.dart';

import 'package:qoutsera/ui/pages/quote_screen.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);


     @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
                 //
        primarySwatch: Colors.blue,
      ),
      home:   Scaffold(
        body: QuoteScreen(),
      ),
    );
  }
}
