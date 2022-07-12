import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:time_tracker/app/sign_in/email_sign_in_model.dart';
import 'package:time_tracker/services/auth.dart';

class EmailSignInBloc {
  EmailSignInBloc({required this.auth});
  final AuthBase? auth;
  final _modelSubject =
      BehaviorSubject<EmailSignInModel>.seeded(EmailSignInModel());
  // final StreamController<EmailSignInModel> _modelController =
  //     StreamController<EmailSignInModel>();

  //Stream<EmailSignInModel> get modelStream => _modelController.stream;
  Stream<EmailSignInModel> get modelStream => _modelSubject.stream;
  // EmailSignInModel _model = EmailSignInModel();
  EmailSignInModel? get _model => _modelSubject.value;

  void dispose() {
    // _modelController.close();
    _modelSubject.close();
  }

  Future<void> submit() async {
    updateWith(submitted: true, isLoading: true);
    try {
      if (_model!.formType == EmailSignInFormType.signIn) {
        await auth!.signInWithEmailAndPassword(_model!.email, _model!.password);
      } else {
        await auth!.createUserWithEmailAndPassword(
            _model!.email, _model!.password);
      }
    } catch (e) {
      updateWith(isLoading: false);
      rethrow;
    }
  }

  void toggleFormType() {
    final formType = _model!.formType == EmailSignInFormType.signIn
        ? EmailSignInFormType.register
        : EmailSignInFormType.signIn;
    updateWith(
      email: '',
      password: '',
      formType: formType,
      isLoading: false,
      submitted: false,
    );
  }

  void updateEmail(String email) => updateWith(email: email);
  void updatePassword(String password) => updateWith(password: password);

  void updateWith({
    String? email,
    String? password,
    EmailSignInFormType? formType,
    bool? isLoading,
    bool? submitted,
  }) {
    _modelSubject.value = _model!.copyWith(
      email: email,
      password: password,
      formType: formType,
      isLoading: isLoading,
      submitted: submitted,
    );
    // _modelController.add(_model);
  }
}
