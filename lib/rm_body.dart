import 'package:flutter/material.dart';
import 'package:restaurant_management/rm_list.dart';
import 'package:restaurant_management/rm_stories.dart';

class RMBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: RMList())
      ],
    );
  }
}
