import 'package:freezed_annotation/freezed_annotation.dart';

part 'launchpad_state.freezed.dart';

@freezed
class LaunchpadState<List> with _$LaunchpadState<List> {
  const factory LaunchpadState.initial() = _Initial;

  const factory LaunchpadState.loading() = Loading;
  const factory LaunchpadState.success(List data) = Success<List>;
  const factory LaunchpadState.error({required String error}) = Error;
}
