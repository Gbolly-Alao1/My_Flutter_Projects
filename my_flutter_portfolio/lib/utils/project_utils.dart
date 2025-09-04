class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String codeLink;
  final String videoLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.codeLink,
    required this.videoLink,
  });
}

// MY PROJECTS
List<ProjectUtils> myProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/bmi_new.png',
    title: 'BMI Calculator',
    subtitle:
        'A beautiful and interactive app that calculates Body Mass Index (BMI)',
    codeLink:
        'https://github.com/Gbolly-Alao1/My_Flutter_Projects/tree/master/bmi_calculator_app',
    videoLink:
        'https://drive.google.com/file/d/1ibOmIdKys28Toe-ikAXSmxekPIasLt5Q/view?usp=sharing',
  ),
  ProjectUtils(
    image: 'assets/projects/ic_launcher_round.png',
    title: 'Destinii Challenge',
    subtitle:
        'This is a choose-your-own-adventure game that brings interactive storytelling to mobile.',
    codeLink:
        'https://github.com/Gbolly-Alao1/My_Flutter_Projects/tree/master/destinii_challenge',
    videoLink:
        'https://drive.google.com/file/d/1U6v6LClCS9PZsxKwiNBVDL4uZXq2wMv0/view?usp=sharing',
  ),
  ProjectUtils(
    image: 'assets/projects/quizzler.png',
    title: 'Quizzler App',
    subtitle: 'A fun and interactive quiz app',
    codeLink:
        'https://github.com/Gbolly-Alao1/My_Flutter_Projects/tree/master/quizzler_app',
    videoLink:
        'https://drive.google.com/file/d/12FW28nJubJ-yipddLDiv7xOmBNMWap8p/view?usp=sharing',
  ),
  ProjectUtils(
    image: 'assets/projects/magic_8_ball.png',
    title: 'Magic 8-Ball App',
    subtitle:
        'A digital fortune teller that responds to questions with mystical answers when the ball is tapped',
    codeLink:
        'https://github.com/Gbolly-Alao1/My_Flutter_Projects/tree/master/magic_8_ball_app',
    videoLink:
        'https://drive.google.com/file/d/1zwSj7c1tCEe-uFe7z4pJBxOU_dXnCyQy/view?usp=sharing',
  ),
];
