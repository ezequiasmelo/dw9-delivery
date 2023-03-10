import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

part 'login_state.g.dart';

@match
enum LoginStatus {
  initial,
  login,
  success,
  loginError,
  error,
}

class LoginState extends Equatable {
  final LoginStatus status;
  final String? erroMessage;

  const LoginState({
    required this.status,
    this.erroMessage,
  });

  const LoginState.iniatial()
      : status = LoginStatus.initial,
        erroMessage = null;

  @override
  List<Object?> get props => [status, erroMessage];

  LoginState copyWith({
    LoginStatus? status,
    String? erroMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      erroMessage: erroMessage ?? this.erroMessage,
    );
  }
}
