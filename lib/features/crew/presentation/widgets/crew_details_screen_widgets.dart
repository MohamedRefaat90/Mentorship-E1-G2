import 'package:flutter/material.dart';
import 'package:mentorship_e1_g3/core/themes/styles.dart';
import 'package:mentorship_e1_g3/features/crew/data/model/temp_model_to_test_ui.dart';

class CrewDetailsBody extends StatelessWidget {
  final CrewModel crewMember;

  const CrewDetailsBody({Key? key, required this.crewMember}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (crewMember.image != null)
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(crewMember.image!),
                radius: 80.0,
              ),
            ),
          SizedBox(height: 16.0),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'Name: ',
                  style: AppStyles.font15SemiBoldPurple(context),
                ),
                TextSpan(
                  text: crewMember.name ?? 'Unknown',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'Agency: ',
                  style: AppStyles.font15SemiBoldPurple(context),
                ),
                TextSpan(
                  text: crewMember.agency ?? 'Unknown',
                  style: AppStyles.font15MediumWhite(context),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'Status: ',
                  style: AppStyles.font15SemiBoldPurple(context),
                ),
                TextSpan(
                  text: crewMember.status ?? 'Unknown',
                  style: AppStyles.font15MediumWhite(context),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          if (crewMember.wikipedia != null)
            TextButton(
              onPressed: () {
                // Open Wikipedia link here
              },
              child: Text(
                'More Info',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          // Additional details
          SizedBox(height: 16.0),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'ID: ',
                  style: AppStyles.font15SemiBoldPurple(context),
                ),
                TextSpan(
                  text: crewMember.id ?? 'Unknown',
                  style: AppStyles.font15MediumWhite(context),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.0),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: 'Launches: ',
                  style: AppStyles.font15SemiBoldPurple(context),
                ),
                TextSpan(
                  text: crewMember.launches?.join(", ") ?? 'Unknown',
                  style: AppStyles.font15MediumWhite(context),
                ),
              ],
            ),
          ),
          // Add more details as needed
        ],
      ),
    );
  }
}
