import 'package:flutter_reels_24/flutter_reels_24.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ReelsViewer(reelsList: []));

  });
}