import 'package:flutter_test/flutter_test.dart';
import 'package:gatepass/app.dart';

void main() {
  testWidgets('app opens on the home page', (tester) async {
    await tester.pumpWidget(const GatePassApp());
    expect(find.text('Gate Pass'), findsOneWidget);
  });
}