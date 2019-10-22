import 'package:flutter/material.dart';
import 'package:fchat/config/Palette.dart';
import 'package:intl/intl.dart';

class ChatItemWidget extends StatelessWidget {

  //Properties
  final int index;

  //Constructor
  const ChatItemWidget(this.index);
  

  //Methods
  @override
  Widget build(BuildContext context){
    if(index % 2 == 0) {
      return Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Text("This is a sent message", style: TextStyle(color: Palette.selfMessageColor),),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  width: 200,
                  decoration: BoxDecoration(
                    color: Palette.selfMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  margin: EdgeInsets.only(right: 10),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Text(
                    DateFormat('dd MMM kk:mm')
                      .format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                      style: TextStyle(color: Palette.greyColor, fontSize: 12, fontStyle: FontStyle.normal),
                  ),
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("This is a received message", style: TextStyle(color: Palette.otherMessageColor),),
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  width: 200,
                  decoration: BoxDecoration(
                    color: Palette.otherMessageBackgroundColor,
                    borderRadius: BorderRadius.circular(8)
                  ),
                  margin: EdgeInsets.only(left: 10),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    DateFormat('dd MMM kk:mm')
                      .format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                      style: TextStyle(color: Palette.greyColor, fontSize: 12, fontStyle: FontStyle.normal),
                  ),
                  margin: EdgeInsets.only(top: 5, bottom: 5, left: 5),
                )
              ],
            )
          ],
        ),
      );

    }
  }
}