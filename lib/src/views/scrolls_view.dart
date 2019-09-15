import 'package:flutter/material.dart';

class ScrollsView extends StatelessWidget{

  @override
  Widget build( BuildContext context ){

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pageOne(),
          _pageTwo( context )
        ],
      )
    ); 
  }

  Widget _pageOne(){
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _texts(),
      ],
    );
  }

  Widget _backgroundColor(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _backgroundImage(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image( 
        image: AssetImage( 'assets/scroll-1.png' ),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _texts(){

    final textStyle = TextStyle( color: Colors.white, fontSize: 50.0 );

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0,),
          Text('11°', style: textStyle,),
          Text('Miercoles', style: textStyle,),
          Expanded( child: Container(),),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
        ],
      ),
    );
  }

  Widget _pageTwo( BuildContext context ){
    return Stack(
      children: <Widget>[
        _backgroundColor(),
        _actionButton( context )
      ],
    );
  }

  Widget _actionButton( BuildContext context ){

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
              FlatButton(
                shape: StadiumBorder(),
                onPressed: (){
                  Navigator.pushNamed(context, 'button');
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  child: Text('Next', style: TextStyle(fontSize: 20.0),),
                ),
                color: Colors.blue,
                textColor: Colors.white,
            ),
        ],
      ),
    );
  }
}