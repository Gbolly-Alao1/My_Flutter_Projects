import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/utils/project_utils.dart';

import '../constants/colors.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgLight2,
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisSize: MainAxisSize.min,
        children: [
          //project image
          Image.asset(
            project.image,
            width: 160.0,
            height: 160.0,
            //fit: BoxFit.cover,
          ),
          //title
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 5),
              child: Text(
                project.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: whitePrimary,
                ),
              ),
            ),
          ),
          // subtitle
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 5),
              child: Text(
                project.subtitle,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12.0,
                  color: whiteSecondary,
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),
          Spacer(),
          //footer
          Container(
            color: bgLight1,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: InkWell(
                    onTap: () async {
                      var url = Uri.parse(project.codeLink);
                      if (await launcher.canLaunchUrl(url)) {
                        await launcher.launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(Icons.code, size: 12.0, color: yellowSecondary),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    var url = Uri.parse(project.codeLink);
                    if (await launcher.canLaunchUrl(url)) {
                      await launcher.launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    'View Code',
                    style: TextStyle(fontSize: 12.0, color: yellowSecondary),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: InkWell(
                    onTap: () async {
                      var url = Uri.parse(project.videoLink);
                      if (await launcher.canLaunchUrl(url)) {
                        await launcher.launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Icon(
                      Icons.video_camera_back_outlined,
                      size: 12.0,
                      color: yellowSecondary,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    var url = Uri.parse(project.videoLink);
                    if (await launcher.canLaunchUrl(url)) {
                      await launcher.launchUrl(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text(
                    'Live Demo',
                    style: TextStyle(fontSize: 12.0, color: yellowSecondary),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
