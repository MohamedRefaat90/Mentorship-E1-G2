import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/core/extension/num_extension.dart';
import 'package:spacex/core/themes/app_pallete.dart';
import 'package:spacex/core/themes/styles.dart';
import 'package:spacex/features/Auth/login/cubit/login_cubit.dart';

class LogOutDialogButton extends StatelessWidget {
  const LogOutDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70),
      child: Container(
        width: 120.width,
        height: 50.height,
        decoration: BoxDecoration(
            color: AppPalette.whiteColor,
            borderRadius: BorderRadius.circular(20)),
        child: TextButton(
          onPressed: () => context.read<LoginCubit>().logout(),
          child: Row(
            children: [
              Text('Log out',
                  style: AppStyles.font18SemiBoldWhite(context)
                      .copyWith(color: Colors.blue.withOpacity(0.7))),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.logout,
                color: AppPalette.homeBG,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
