import 'package:flutter/material.dart';
import 'package:my_flutter_portfolio/constants/colors.dart';
import 'package:my_flutter_portfolio/constants/size.dart';
import 'package:my_flutter_portfolio/widgets/drawer_mobile.dart';
import 'package:my_flutter_portfolio/widgets/header_mobile.dart';

import '../widgets/contact_section.dart';
import '../widgets/footer.dart';
import '../widgets/header_desktop.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/projects_section.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';

final List<GlobalKey> navBarKeys = List.generate(4, (index) => GlobalKey());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    //call function
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                SizedBox(key: navBarKeys.first),
                //Main
                if (constraints.maxWidth >= kMinDesktopWidth)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      //call function
                      scrollToSection(navIndex);
                    },
                  )
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  MainDesktop(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                  )
                else
                  MainMobile(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                  ),
                //Skills
                Container(
                  key: navBarKeys[1],
                  width: screenWidth,
                  color: bgLight1,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //title
                      Text(
                        'What I can do',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: whitePrimary,
                        ),
                      ),
                      SizedBox(height: 40.0),
                      //platforms and skills
                      if (constraints.maxWidth >= kMedDesktopWidth)
                        SkillsDesktop()
                      else
                        SkillsMobile(),
                    ],
                  ),
                ),
                //Projects
                ProjectsSection(screenWidth: screenWidth, key: navBarKeys[2]),
                //Contacts
                ContactSection(key: navBarKeys[3]),
                //Footer
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    final key = navBarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
