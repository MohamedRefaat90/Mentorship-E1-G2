import 'package:bloc/bloc.dart';
import 'package:mentorship_e1_g3/features/Auth/login/cubit/login_methods.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
}
