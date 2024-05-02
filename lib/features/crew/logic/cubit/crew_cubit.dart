import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew_state.dart';
part 'crew_cubit.freezed.dart';

class CrewCubit extends Cubit<CrewState> {
  CrewCubit() : super(CrewState.initial());
}
