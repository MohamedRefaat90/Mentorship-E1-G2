part of 'signup_cubit.dart';

final class SignupInitial extends SignupState {}

@immutable
sealed class SignupState {}

final class SignupValidFields extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {}

final class SignupFailure extends SignupState {
  final String errorMSG;

  SignupFailure({required this.errorMSG});
}
