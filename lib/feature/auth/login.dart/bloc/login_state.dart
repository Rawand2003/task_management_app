part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}


class Successlogin extends LoginState {}
class Failedlogin extends LoginState {}
class Loadinglogin extends LoginState {}