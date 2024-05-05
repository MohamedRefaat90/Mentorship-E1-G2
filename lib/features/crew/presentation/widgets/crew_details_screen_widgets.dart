import 'package:flutter/material.dart';
import 'package:spacex/core/resources/assets.dart';
import 'package:spacex/core/themes/styles.dart';
import 'package:spacex/features/crew/data/model/crew_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CrewDetailsBody extends StatelessWidget {
  final CrewModel crewMember;

  const CrewDetailsBody({Key? key, required this.crewMember}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.backgroundImage,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (crewMember.image != null)
                Center(
                  child: Hero(
                    tag: crewMember.id!,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(crewMember.image!),
                      radius: 80.0,
                    ),
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
                    // Open Wikipedia link in a full-screen dialog
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            WikipediaWebView(url: crewMember.wikipedia!),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  child: Text(
                    'More Info',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              // Additional details...
            ],
          ),
        ),
      ],
    );
  }
}

class WikipediaWebView extends StatelessWidget {
  final String url;

  const WikipediaWebView({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wikipedia'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
