import 'package:flutter/material.dart';

class BasicView extends StatelessWidget{

  final styleTitle = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle( fontSize: 18.0, color: Colors.grey);

  @override
  Widget build( BuildContext context){

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          createImage(),
          createTitle(),
          createActions(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          SizedBox(height: 20.0,),
          FlatButton(
            shape: StadiumBorder(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              child: Text('Next', style: TextStyle(fontSize: 20.0),),
            ),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: (){
              Navigator.pushNamed(context, 'scroll');
            },
          )
        ],
        ),
      )
    );
  }

  Widget createImage(){

    return Container(
            width: double.infinity,
            child: Image(
              image: NetworkImage('https://littlecloudcuriosity.files.wordpress.com/2014/12/fate-stay-night-unlimited-blade-works-episode-12-70.jpg'),
              height: 190.0,
              fit: BoxFit.cover,
              ),
          );
  }

  Widget createTitle(){
    
    return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Unlimited Blade Works', style: styleTitle,),
                        SizedBox(height: 7.0,),
                        Text('Noble Panthom', style: styleSubtitle,)
                      ],
                    ),
                  ),
                  Icon( Icons.star, color: Colors.red, size: 30.0,),
                  Text('41', style: TextStyle( fontSize: 20.0),)   
                ],
              ),
            ),
    );
  }

  Widget createActions(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _action( 'CALL', Icons.call ),
        _action( 'ROUTE', Icons.near_me ),
        _action( 'SHARE', Icons.share ),
      ],
    );
  }

  Widget _action( String text, IconData icon){
    return Column(
          children: <Widget>[
            Icon( icon, color: Colors.blue ),
            SizedBox(height: 5.0,),
            Text( text, style: TextStyle(color: Colors.blue,fontSize: 15.0), )
          ],
        );
  }

  Widget _createText(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}