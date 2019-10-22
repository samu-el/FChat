import 'package:fchat/main.dart';
import 'package:fchat/widgets/ChatListWidget.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('ConversationPage UI Test', (WidgetTester tester) async  {
    //Build our app and trigger a frame
    await tester.pumpWidget(FChat());
    expect(find.byType(ChatListWidget),findsOneWidget);
    

  });
}