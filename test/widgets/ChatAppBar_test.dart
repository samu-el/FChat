import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fchat/widgets/ChatAppBar.dart';


void main() {
  const app = MaterialApp(
    home: Scaffold(
      body: const ChatAppBar(),
    ),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async  {
    //Build our app and trigger a frame
    await tester.pumpWidget(app);
    expect(find.text("Samuel"), findsOneWidget);
    expect(find.text("@samuel"), findsOneWidget);
    expect(find.byType(IconButton), findsOneWidget);
    expect(find.byType(CircleAvatar), findsOneWidget);

  });
}