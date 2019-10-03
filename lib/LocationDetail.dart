import 'package:crashcourse/Styles.dart';
import 'package:flutter/material.dart';
import 'models/Location.dart';
import 'Styles.dart';

class LocationDetail  extends StatelessWidget{

  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text(location.name,style: Styles.navBarTitle),

      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context,location),
      ),

    );
  }

  List<Widget> _renderBody(BuildContext context, Location location){
    var result =  List<Widget>();
    result.add(_renderImage(location.url, 170.0));
    result.addAll(_renderFacts(context,location));
    return result;
  }

  Widget _createTitle(String text){
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10),
      child: Text(text,
          textAlign: TextAlign.left,
          style: Styles.headerLarge
      ),
    );
  }

  Widget _createSeccion(String text){
    return Container(
      
      padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15),
      child: Text(text,
      textAlign: TextAlign.left,
        style: Styles.textDefault,
      )
      ,

    );
  }

  List<Widget>_renderFacts(BuildContext context,Location location){
    List<Widget> result= List<Widget>();

    for(int i =0  ; i<location.facts.length;  i++){
      result.add(_createTitle(location.facts[i].title));
      result.add(_createSeccion(location.facts[i].text));
    }

    return result;
  }

  Widget _renderImage(String url, double height){
    return Container(

      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(
        url,fit: BoxFit.fitWidth,
      ),
    );
  }


}