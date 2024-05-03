import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/extension/num_extension.dart';
import 'package:mentorship_e1_g3/core/themes/app_pallete.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';

class LogOutDialogButton extends StatelessWidget {
  const LogOutDialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding:const EdgeInsets.only(bottom:70),
                child: Container(
                  width: 120.w,
                  height: 50.h,
                  decoration:BoxDecoration(
                    color: AppPallete.whiteColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextButton(
                      onPressed:(){},
                      child:Row(
                        children: [
                          Text('Log out',
                          style: AppStyles.font18SemiBoldWhite(context).copyWith(
                            color: Colors.blue.withOpacity(0.7)
                          )
                          ),
                          const SizedBox(width: 10,),
                          const Icon(
                            Icons.logout,
                            color: AppPallete.homeBG,
                          ),
                        ],
                      ) ,
                      ),
                      
                ),
              );
  }
}