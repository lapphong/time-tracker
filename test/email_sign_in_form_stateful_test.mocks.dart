import 'dart:async' as _i6;

import 'package:firebase_auth/firebase_auth.dart' as _i2;
import 'package:firebase_auth_platform_interface/src/action_code_settings.dart'
    as _i9;
import 'package:firebase_auth_platform_interface/src/auth_credential.dart'
    as _i8;
import 'package:firebase_auth_platform_interface/src/id_token_result.dart'
    as _i4;
import 'package:firebase_auth_platform_interface/src/providers/phone_auth.dart'
    as _i10;
import 'package:firebase_auth_platform_interface/src/user_info.dart' as _i7;
import 'package:firebase_auth_platform_interface/src/user_metadata.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:time_tracker/services/auth.dart' as _i5;

// ignore_for_file: comment_references
// ignore_for_file: unnecessary_parenthesis

class _FakeUser extends _i1.Fake implements _i2.User {}

class _FakeUserMetadata extends _i1.Fake implements _i3.UserMetadata {}

class _FakeIdTokenResult extends _i1.Fake implements _i4.IdTokenResult {}

class _FakeUserCredential extends _i1.Fake implements _i2.UserCredential {}

class _FakeConfirmationResult extends _i1.Fake
    implements _i2.ConfirmationResult {}

/// A class which mocks [AuthBase].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthBase extends _i1.Mock implements _i5.AuthBase {
  MockAuthBase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Stream<_i2.User?> authStateChanges() =>
      (super.noSuchMethod(Invocation.method(#authStateChanges, []),
          returnValue: Stream<_i2.User?>.empty()) as _i6.Stream<_i2.User?>);
  @override
  _i6.Future<_i2.User> signInAnonymously() =>
      (super.noSuchMethod(Invocation.method(#signInAnonymously, []),
          returnValue: Future.value(_FakeUser())) as _i6.Future<_i2.User>);
  @override
  _i6.Future<_i2.User> signInWithEmailAndPassword(
          String? email, String? password) =>
      (super.noSuchMethod(
          Invocation.method(#signInWithEmailAndPassword, [email, password]),
          returnValue: Future.value(_FakeUser())) as _i6.Future<_i2.User>);
  @override
  _i6.Future<_i2.User> createUserWithEmailAndPassword(
          String? email, String? password) =>
      (super.noSuchMethod(
          Invocation.method(#createUserWithEmailAndPassword, [email, password]),
          returnValue: Future.value(_FakeUser())) as _i6.Future<_i2.User>);
  @override
  _i6.Future<_i2.User> signInWithGoogle() =>
      (super.noSuchMethod(Invocation.method(#signInWithGoogle, []),
          returnValue: Future.value(_FakeUser())) as _i6.Future<_i2.User>);
  @override
  _i6.Future<_i2.User> signInWithFacebook() =>
      (super.noSuchMethod(Invocation.method(#signInWithFacebook, []),
          returnValue: Future.value(_FakeUser())) as _i6.Future<_i2.User>);
  @override
  _i6.Future<void> signOut() =>
      (super.noSuchMethod(Invocation.method(#signOut, []),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
}

/// A class which mocks [User].
///
/// See the documentation for Mockito's code generation for more information.
class MockUser extends _i1.Mock implements _i2.User {
  MockUser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  bool get emailVerified =>
      (super.noSuchMethod(Invocation.getter(#emailVerified), returnValue: false)
          as bool);
  @override
  bool get isAnonymous =>
      (super.noSuchMethod(Invocation.getter(#isAnonymous), returnValue: false)
          as bool);
  @override
  _i3.UserMetadata get metadata =>
      (super.noSuchMethod(Invocation.getter(#metadata),
          returnValue: _FakeUserMetadata()) as _i3.UserMetadata);
  @override
  List<_i7.UserInfo> get providerData =>
      (super.noSuchMethod(Invocation.getter(#providerData),
          returnValue: <_i7.UserInfo>[]) as List<_i7.UserInfo>);
  @override
  String get uid =>
      (super.noSuchMethod(Invocation.getter(#uid), returnValue: '') as String);
  @override
  _i6.Future<void> delete() =>
      (super.noSuchMethod(Invocation.method(#delete, []),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<String> getIdToken([bool? forceRefresh = false]) =>
      (super.noSuchMethod(Invocation.method(#getIdToken, [forceRefresh]),
          returnValue: Future.value('')) as _i6.Future<String>);
  @override
  _i6.Future<_i4.IdTokenResult> getIdTokenResult(
          [bool? forceRefresh = false]) =>
      (super.noSuchMethod(Invocation.method(#getIdTokenResult, [forceRefresh]),
              returnValue: Future.value(_FakeIdTokenResult()))
          as _i6.Future<_i4.IdTokenResult>);
  @override
  _i6.Future<_i2.UserCredential> linkWithCredential(
          _i8.AuthCredential? credential) =>
      (super.noSuchMethod(Invocation.method(#linkWithCredential, [credential]),
              returnValue: Future.value(_FakeUserCredential()))
          as _i6.Future<_i2.UserCredential>);
  @override
  _i6.Future<_i2.ConfirmationResult> linkWithPhoneNumber(String? phoneNumber,
          [_i2.RecaptchaVerifier? verifier]) =>
      (super.noSuchMethod(
              Invocation.method(#linkWithPhoneNumber, [phoneNumber, verifier]),
              returnValue: Future.value(_FakeConfirmationResult()))
          as _i6.Future<_i2.ConfirmationResult>);
  @override
  _i6.Future<_i2.UserCredential> reauthenticateWithCredential(
          _i8.AuthCredential? credential) =>
      (super.noSuchMethod(
              Invocation.method(#reauthenticateWithCredential, [credential]),
              returnValue: Future.value(_FakeUserCredential()))
          as _i6.Future<_i2.UserCredential>);
  @override
  _i6.Future<void> reload() =>
      (super.noSuchMethod(Invocation.method(#reload, []),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> sendEmailVerification(
          [_i9.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
          Invocation.method(#sendEmailVerification, [actionCodeSettings]),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<_i2.User> unlink(String? providerId) =>
      (super.noSuchMethod(Invocation.method(#unlink, [providerId]),
          returnValue: Future.value(_FakeUser())) as _i6.Future<_i2.User>);
  @override
  _i6.Future<void> updateEmail(String? newEmail) =>
      (super.noSuchMethod(Invocation.method(#updateEmail, [newEmail]),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> updatePassword(String? newPassword) =>
      (super.noSuchMethod(Invocation.method(#updatePassword, [newPassword]),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> updatePhoneNumber(
          _i10.PhoneAuthCredential? phoneCredential) =>
      (super.noSuchMethod(
          Invocation.method(#updatePhoneNumber, [phoneCredential]),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> updateProfile({String? displayName, String? photoURL}) =>
      (super.noSuchMethod(
          Invocation.method(#updateProfile, [],
              {#displayName: displayName, #photoURL: photoURL}),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  _i6.Future<void> verifyBeforeUpdateEmail(String? newEmail,
          [_i9.ActionCodeSettings? actionCodeSettings]) =>
      (super.noSuchMethod(
          Invocation.method(
              #verifyBeforeUpdateEmail, [newEmail, actionCodeSettings]),
          returnValue: Future.value(null),
          returnValueForMissingStub: Future.value()) as _i6.Future<void>);
  @override
  String toString() =>
      (super.noSuchMethod(Invocation.method(#toString, []), returnValue: '')
          as String);
}
