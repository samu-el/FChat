import 'package:flutter/material.dart';
import 'package:fchat/pages/ConversationPageList.dart';

void main() => runApp(FChat());

class FChat extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConversationPageList()
    );
  }
}
