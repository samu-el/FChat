import 'package:flutter/material.dart';
import 'package:fchat/widgets/ChatItemWidget.dart';

class ChatListWidget extends StatelessWidget {

  //Properties
  final listScrollController = ScrollController();

  ChatListWidget();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemBuilder: (context, index) => ChatItemWidget(index),
        itemCount: 20,
        reverse: true,
        controller: listScrollController,
      ),
    );
  }
}