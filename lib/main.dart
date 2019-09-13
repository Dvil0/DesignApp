import 'package:designsapp/src/views/scrolls_view.dart';
import 'package:flutter/material.dart';
import 'package:designsapp/src/views/basic_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'scroll',
      routes: {
        'basic'   : ( BuildContext context ) => BasicView(),
        'scroll'  : ( BuildContext context ) => ScrollsView(),
      },
    );
  }
}