import 'package:flutter/material.dart';
class CustomFlatButton extends StatelessWidget {
  CustomFlatButton({this.textName,this.onPress});
  final String textName;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Colors.blue,
      child: Text(
        textName,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      shape: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(23),
      ),
      padding: const EdgeInsets.all(15),
      textColor: Colors.white,
      onPressed: onPress,
    );
  }
}