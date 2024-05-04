import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/crew_model.dart';


part 'crew_state.freezed.dart';

@freezed
class CrewState<T> with _$CrewState<T> {
  const factory CrewState.initial() = _Initial;
  const factory CrewState.loading() = _Loading;
  const factory CrewState.success(T data) = _Success<T>;
  const factory CrewState.error({required String error}) = _Error;
}
