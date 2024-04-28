import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocket_state.freezed.dart';
@freezed
class RocketState <T>with _$RocketState {
  const factory RocketState.initial() = _Initial;
  const factory RocketState.loading() = Loading;
  const factory RocketState.success(T data) = Success<T>;
  const factory RocketState.error({required String error}) = Error;

}
