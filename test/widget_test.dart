// Smoke test for the Rwanda Food Navigation app:
// the home page lists items, and tapping one opens its detail page.

import 'package:flutter_test/flutter_test.dart';

import 'package:rwanda_food_nav/main.dart';

void main() {
  testWidgets('home page shows products and tapping opens detail',
      (WidgetTester tester) async {
    await tester.pumpWidget(const RwandaFoodApp());

    // Home page title and the first item are visible (later items are
    // off-screen in a lazy ListView, so we only assert on-screen ones).
    expect(find.text('Product Navigation'), findsOneWidget);
    expect(find.text('Brochette'), findsWidgets);

    // Tap the first item -> navigate to its detail page.
    await tester.tap(find.text('Brochette').first);
    await tester.pumpAndSettle();

    // Detail page shows the description and price for that item.
    expect(find.textContaining('Grilled goat-meat skewers'), findsOneWidget);
    expect(find.text('Price: 1500 RWF'), findsOneWidget);

    // Back button returns to the home page.
    await tester.pageBack();
    await tester.pumpAndSettle();
    expect(find.text('Product Navigation'), findsOneWidget);
  });
}
