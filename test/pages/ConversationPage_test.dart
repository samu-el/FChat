import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fchat/widgets/ChatAppBar.dart';
import 'package:fchat/widgets/ChatListWidget.dart';
import 'package:fchat/widgets/InputWidget.dart';
import 'package:fchat/pages/ConversationPage.dart';

void main() {
  const app = MaterialApp(
    home: Scaffold(
      body: const ConversationPage(),
    ),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async  {
    //Build our app and trigger a frame
    await tester.pumpWidget(app);
    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);

  });
}