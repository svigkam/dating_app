part of 'signup_cubit.dart';

enum SignupStatus { initial, submitting, error, success }

class SignupState extends Equatable {
  final String email;
  final String password;
  final SignupStatus status;
  const SignupState({
    required this.email,
    required this.password,
    required this.status,
  });

  factory SignupState.initial() {
    return SignupState(
      email: '',
      password: 'password',
      status: SignupStatus.initial,
    );
  }

  SignupState copyWith({
    String? email,
    String? password,
    SignupStatus? status,
  }) {
    return SignupState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }

  bool get isValid => email.isNotEmpty && password.isNotEmpty;

  @override
  List<Object> get props => [email, password, status];
}
