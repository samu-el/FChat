import 'package:flutter/material.dart';
import 'ConversationPage.dart';

class ConversationPageList extends StatelessWidget{

  const ConversationPageList();

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ConversationPage(),
        ConversationPage(),
        ConversationPage(),
      ],
    );
  }
  
}