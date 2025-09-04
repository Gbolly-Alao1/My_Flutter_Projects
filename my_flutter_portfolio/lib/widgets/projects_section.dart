import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/widgets/project_card.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //projects title
          Text(
            'My Projects',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: whitePrimary,
            ),
          ),
          SizedBox(height: 40.0),
          Wrap(
            spacing: 25.0,
            runSpacing: 25.0,
            children: [
              //project cards
              for (int i = 0; i < myProjectUtils.length; i++)
                ProjectCard(project: myProjectUtils[i]),
            ],
          ),
        ],
      ),
    );
  }
}
