// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:daily_quotes/main.dart';

void main() {
  testWidgets('Press Button Change Quote', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify our Welcome Message
    expect(find.text("Get New Quote Every Day!"), findsOneWidget);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.insert_comment));
    await tester.pump();

    // Verify that our quote changed.
    expect(find.text("Get New Quote Every Day!"), findsNothing);
  });
}
