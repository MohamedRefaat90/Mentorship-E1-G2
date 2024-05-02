part of 'crew_cubit.dart';

@freezed
class CrewState<T> with _$CrewState<T> {
  const factory CrewState.initial() = _Initial;
  const factory CrewState.loading() = Loading;
  const factory CrewState.success(T data) = Success<T>;
  const factory CrewState.error({required String error}) = Error;
}
