import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ticker_free_circular_progress_indicator/ticker_free_circular_progress_indicator.dart';

void main() {
  group('TickerFreeCircularProgressIndicator', () {
    testWidgets('should render indeterminate progress indicator',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should render determinate progress indicator',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(value: 0.5),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should accept custom color', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should accept custom stroke width',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(
              strokeWidth: 8.0,
            ),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should accept background color', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(
              backgroundColor: Colors.grey,
            ),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should accept stroke cap', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(
              strokeCap: StrokeCap.round,
            ),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should accept stroke align', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(
              strokeAlign: -1.0,
            ),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should handle delay and default widget',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(
              delay: Duration(seconds: 1),
              defaultWidgetAfterDelay: Text('Delayed widget'),
            ),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should accept semantics labels', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: TickerFreeCircularProgressIndicator(
              semanticsLabel: 'Loading progress',
              semanticsValue: '50%',
            ),
          ),
        ),
      );

      expect(find.byType(TickerFreeCircularProgressIndicator), findsOneWidget);
    });
  });
}
