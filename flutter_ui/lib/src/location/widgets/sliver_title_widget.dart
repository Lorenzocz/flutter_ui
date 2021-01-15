import 'package:flutter/material.dart';

class SliverTitleWidget extends StatelessWidget {
  const SliverTitleWidget({Key key, this.title, this.fontSize, this.left, this.top, this.right, this.bottom})
      : super(key: key);

  final String title;
  final double fontSize;
  final double left;
  final double top;
  final double right;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Padding(
        padding:EdgeInsets.fromLTRB(left, top, right, bottom),
        child: Container(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: fontSize,
                fontFamily: 'RobotoMedium',
                letterSpacing: 1),
          ),
        ),
      ),
    ]));
  }
}
