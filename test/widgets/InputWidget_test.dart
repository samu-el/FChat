import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fchat/widgets/InputWidget.dart';


void main() {
  var app = MaterialApp(
    home: Scaffold(
      body: InputWidget(),
    ),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async  {
    //Build our app and trigger a frame
    await tester.pumpWidget(app);
    expect(find.byType(EditableText), findsOneWidget);
    expect(find.byType(IconButton), findsNWidgets(2));

  });
}