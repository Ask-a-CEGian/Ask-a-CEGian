import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ask_a_cegian/flutter_flow/flutter_flow_icon_button.dart';
import 'package:ask_a_cegian/flutter_flow/flutter_flow_widgets.dart';
import 'package:ask_a_cegian/flutter_flow/flutter_flow_theme.dart';
import 'package:ask_a_cegian/index.dart';
import 'package:ask_a_cegian/main.dart';
import 'package:ask_a_cegian/flutter_flow/flutter_flow_util.dart';

import 'package:ask_a_cegian/backend/firebase/firebase_config.dart';
import 'package:ask_a_cegian/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    _overrideOnError();
    await initFirebase();

    await FlutterFlowTheme.initialize();
  });

  setUp(() async {
    await authManager.signOut();
  });

  group('Authentication', () {
    testWidgets('Select Login - Asking page', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Button_ogt6')));
      await tester.pumpAndSettle();
      expect(find.text('Log in'), findsWidgets);
    });

    testWidgets('Select Signup - Asking Page', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Button_kyb5')));
      await tester.pumpAndSettle();
      expect(find.text('Do you want to be a ?'), findsWidgets);
    });

    testWidgets('Select Next - Landing Page', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('UNDEFINED')));
      await tester.pumpAndSettle();
      expect(find.text('Ask A CEGian'), findsWidgets);
    });

    testWidgets('Login User - login1', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('loginEmail_plz0')), 'msurendhar@gmail.com');
      await tester.enterText(
          find.byKey(ValueKey('loginPassword_yy5r')), 'Metta#19');
      await tester.tap(find.byKey(ValueKey('Button_dzg1')));
      await tester.pumpAndSettle();
      expect(find.text('Mentor'), findsWidgets);
    });

    testWidgets('SignUp User - SignUp1', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.pumpAndSettle();
      await tester.enterText(
          find.byKey(ValueKey('UNDEFINED')), 'msurendhar1@gmail.com');
      await tester.enterText(find.byKey(ValueKey('UNDEFINED')), 'Metta#19');
      await tester.enterText(find.byKey(ValueKey('UNDEFINED')), 'Metta#19');
      await tester.tap(find.byKey(ValueKey('UNDEFINED')));
      await tester.pumpAndSettle();
      expect(find.text('Mentor'), findsWidgets);
    });

    testWidgets('Redirect Login -SignUP1', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('UNDEFINED')));
      await tester.pumpAndSettle();
      expect(find.text('Log in'), findsWidgets);
    });

    testWidgets('Redirect SignUp - login1', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('UNDEFINED')));
      await tester.pumpAndSettle();
      expect(find.text('Create an account'), findsWidgets);
    });

    testWidgets('Select Next - SignUp5', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.pumpAndSettle();
      await tester.tap(find.byKey(ValueKey('Button_73f1')));
      await tester.pumpAndSettle();
    });
  });

  testWidgets('sampletest', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    await tester.pumpAndSettle(
      Duration(milliseconds: 1),
      EnginePhase.sendSemanticsUpdate,
      Duration(milliseconds: 1),
    );
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
