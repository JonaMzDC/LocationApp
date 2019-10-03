import 'package:flutter/material.dart';

class Styles{

  static const _textSizeLarge = 18.0;
  static const _textSizeDefault  = 12.0;
  static final Color _textColorStrong = _hexToColor('000000');
  static final Color _textColorDefault = _hexToColor('6666666');
  static final String _fontNameDefault = 'Muli';

  static final navBarTitle = TextStyle(

    fontFamily: _fontNameDefault,
    fontSize:  _textSizeLarge,
    color: Colors.white
  );


  static final headerLarge =TextStyle(
    fontFamily: _fontNameDefault,
    fontSize:  _textSizeLarge,
    color: _textColorStrong
  );

  static final textDefault  =  TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault
  );

  static Color _hexToColor(String code){
      return Color(int.tryParse(code.substring(0,6), radix: 16)  + 0xFF000000);
  }
}