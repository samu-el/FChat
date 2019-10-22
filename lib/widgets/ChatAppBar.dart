import 'package:flutter/material.dart';
import 'package:fchat/config/Assets.dart';
import 'package:fchat/config/Palette.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  //Properties
  final double height = 100.0;

  const ChatAppBar();

  @override
  Widget build(BuildContext context) {
    //Set up text style for the heading (name) and rest of the text
    var textHeading = TextStyle(color: Palette.primaryTextColor, fontSize: 20);
    var textStyle = TextStyle(color: Palette.secondaryTextColor);

    return Material(
      child: Container(
        //Add Shadow to AppBar
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5.0)]),
        child: Container(
          color: Palette.primaryBackgroundColor,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 7,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //Attachmets icon
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.attach_file,
                                    color: Palette.secondaryColor,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                            //Name and Username
                            Expanded(
                              flex: 6,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      "Samuel Mussie",
                                      style: textHeading,
                                    ),
                                    Text(
                                      "@samuel",
                                      style: textStyle,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      //Second row containing buttons for media
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Photos",
                              style: textStyle,
                            ),
                            VerticalDivider(
                              width: 30,
                              color: Palette.primaryTextColor,
                            ),
                            Text(
                              "Videos",
                              style: textStyle,
                            ),
                            VerticalDivider(
                              width: 30,
                              color: Palette.primaryTextColor,
                            ),
                            Text(
                              "Files",
                              style: textStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //Display Profile Picture
              Expanded(
                flex: 3,
                child: Container(
                  child: Center(
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: Image.asset(Assets.user).image,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
