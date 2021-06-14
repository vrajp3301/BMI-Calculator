import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.w600, color: Colors.white),
        )),
        color: kbottomContainerColor,
        margin: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: 50.0,
      ),
    );
  }
}
