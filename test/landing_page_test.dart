import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';
import 'package:time_tracker/app/landing_page.dart';
import 'package:time_tracker/home/home_page.dart';
import 'package:time_tracker/services/auth.dart';

import 'email_sign_in_form_stateful_test.mocks.dart';
import 'mocks.dart';

void main() {
  late MockAuthBase mockAuth;
  late MockDatabase mockDatabase;
  late StreamController<User?> onAuthStateChangedController;

  setUp(() {
    mockAuth = MockAuthBase();
    mockDatabase = MockDatabase();
    onAuthStateChangedController = StreamController<User?>();
  });

  tearDown(() {
    onAuthStateChangedController.close();
  });

  Future<void> pumpLandingPage(WidgetTester tester) async {
    await tester.pumpWidget(
      Provider<AuthBase?>(
        create: (_) => mockAuth,
        child: MaterialApp(
          home: LandingPage(
            databaseBuilder: (_) => mockDatabase,
          ),
        ),
      ),
    );
    await tester.pump();
  }

  void stubOnAuthStateChangedYields(Iterable<User?> onAuthStateChanged) {
    onAuthStateChangedController.addStream(
      Stream<User?>.fromIterable(onAuthStateChanged),
    );
    when(mockAuth.authStateChanges()).thenAnswer((_) {
      return onAuthStateChangedController.stream;
    });
  }

  // testWidgets('stream waiting', (WidgetTester tester) async {
  //   stubOnAuthStateChangedYields([]);

  //   await pumpLandingPage(tester);

  //   expect(find.byType(CircularProgressIndicator), findsOneWidget);
  // });

  // testWidgets('null user', (WidgetTester tester) async {
  //   stubOnAuthStateChangedYields([null]);

  //   await pumpLandingPage(tester);

  //   expect(find.byType(SignInPage), findsOneWidget);
  // });

  // testWidgets('non-null user', (WidgetTester tester) async {
  //   stubOnAuthStateChangedYields([MockUser.uid('123')]);

  //   await pumpLandingPage(tester);

  //   expect(find.byType(HomePage), findsOneWidget);
  // });
}
