part of 'signup_cubit.dart';

final class SignupInitial extends SignupState {}

@immutable
sealed class SignupState {}

final class SignupValidFields extends SignupState {}
