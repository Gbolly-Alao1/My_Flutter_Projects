import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/size.dart';
import 'package:my_flutter_portfolio/constants/sns_links.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import '../constants/colors.dart';
import 'custom_text_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: bgLight1,
      child: Column(
        children: [
          //title
          Text(
            'Connect',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: whitePrimary,
            ),
          ),
          SizedBox(height: 40.0),
          //sns links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () async {
                  var url = Uri.parse(github);
                  if (await launcher.canLaunchUrl(url)) {
                    await launcher.launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image.asset('assets/github.png', width: 28.0),
              ),
              InkWell(
                onTap: () async {
                  var url = Uri.parse(linkedin);
                  if (await launcher.canLaunchUrl(url)) {
                    await launcher.launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image.asset('assets/linkedin.png', width: 28.0),
              ),
              InkWell(
                onTap: () async {
                  var url = Uri.parse(facebook);
                  if (await launcher.canLaunchUrl(url)) {
                    await launcher.launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image.asset('assets/facebook.png', width: 28.0),
              ),
              InkWell(
                onTap: () async {
                  var url = Uri.parse(telegram);
                  if (await launcher.canLaunchUrl(url)) {
                    await launcher.launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image.asset('assets/telegram.png', width: 28.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(child: CustomTextField(hintText: 'Your name')),
        SizedBox(height: 15.0),
        Flexible(child: CustomTextField(hintText: 'Your email')),
      ],
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(child: CustomTextField(hintText: 'Your name')),
        SizedBox(width: 15.0),
        Flexible(child: CustomTextField(hintText: 'Your email')),
      ],
    );
  }
}
