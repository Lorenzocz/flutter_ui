import 'package:flutter/material.dart';

class FlatButtonCardItemWidget extends StatelessWidget {
  const FlatButtonCardItemWidget(
      {Key key, this.callbackAction, this.textBotton})
      : super(key: key);
  final Function callbackAction;
  final String textBotton;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: OutlineButton(
        onPressed: callbackAction,
        textColor: Colors.white,
        color: Colors.red,
      

        highlightColor: Color(0xfffa8e3e0),

        focusColor: Color(0xfffa8e3e0),
        borderSide: BorderSide(color: Color(0xfffa8e3e0)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(textBotton,style: TextStyle(
          color: Color(0xfffa8e3e0),
          fontFamily:"RobotoLight" 
        ),),
      ),
    );
  }
}
