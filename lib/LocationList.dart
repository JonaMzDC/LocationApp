
import 'package:crashcourse/LocationDetail.dart';
import 'package:flutter/material.dart';
import 'models/Location.dart';
import 'Styles.dart';


class LocationList  extends StatelessWidget {

  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text("Locations" , style: Styles.navBarTitle)
      ),
      body: ListView.builder(
          
          itemCount: this.locations.length,
          itemBuilder: (context, index){
            return ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading: _itemThumbnail(this.locations[index]),
              title: _itemTitle(this.locations[index]),
              onTap:(){
                _navigationToLocationDetail(context, this.locations[index]);
              },
            );
          }
      ),
    );
  }


  void _navigationToLocationDetail(BuildContext context, Location location){
    Navigator.push(context, MaterialPageRoute(
        builder: (context)  => LocationDetail(location)
    ));
  }


  Widget _itemThumbnail(Location location){
    return Container(
      constraints: BoxConstraints.tightFor(width:100.0),
      child: Image.network(location.url , fit: BoxFit.fitWidth,
      ),

    );
  }


  Widget _itemTitle(Location location){
    return Text(
      '${location.name}',style: Styles.textDefault,
    );
  }
}