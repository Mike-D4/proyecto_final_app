
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';

import 'package:proyectoap/main.dart';
import 'package:webfeed/util/helpers.dart';

/*void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: Image.network('https://cdn3.f-cdn.com/contestentries/304681/17615120/565382ff38df8_thumb900.jpg'),
    ));
    //xpect(find.byType(Center), findsOneWidget);
  });
}*/

void main() {
  testWidgets('my image test', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      // Now we can pump NetworkImages without crashing our tests. Yay!
      await tester.pumpWidget(
        MaterialApp(
          home: Image.network('https://cdn3.f-cdn.com/contestentries/304681/17615120/565382ff38df8_thumb900.jpg'),
        ),
      );
      // No crashes.
    });
  });
}