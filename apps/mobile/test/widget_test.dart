import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile/app/app.dart';

void main() {
  testWidgets('Karino app loads', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: KarinoApp(),
      ),
    );

    expect(find.text('Karino'), findsOneWidget);
  });
}