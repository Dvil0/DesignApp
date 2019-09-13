import 'package:designsapp/src/views/buttons_view.dart';
import 'package:designsapp/src/views/scrolls_view.dart';
import 'package:flutter/material.dart';
import 'package:designsapp/src/views/basic_view.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'button',
      routes: {
        'basic'   : ( BuildContext context ) => BasicView(),
        'scroll'  : ( BuildContext context ) => ScrollsView(),
        'button'  : ( BuildContext context ) => ButtonsView(),
      },
    );
  }
}