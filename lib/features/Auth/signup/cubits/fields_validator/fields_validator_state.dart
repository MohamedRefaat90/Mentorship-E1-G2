part of 'fields_validator_cubit.dart';

@immutable
sealed class FieldsValidatorState {}

final class FieldsValidatorInitial extends FieldsValidatorState {}

final class ValidateFields extends FieldsValidatorState {}
