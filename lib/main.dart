import 'package:flutter/material.dart';
import 'LocationDetail.dart';
import 'mocks/Mock_Location.dart';
import 'models/Location.dart';
import 'LocationList.dart';


void main(){

  final mockLockation = MockLocation.fetchAll();
  return runApp(MaterialApp(


    home: LocationList(mockLockation)));



}



