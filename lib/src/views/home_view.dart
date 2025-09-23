import 'package:flutter/material.dart';
import '../widgets/custom_sized_row.dart';
import '../widgets/project_config_card.dart';
import '../widgets/project_preview_card.dart';
import '../widgets/project_generate_card.dart';
import '../widgets/folder_structure_card.dart';
import '../widgets/platforms_card.dart';
import '../widgets/packages_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the screen size
    final Size size = MediaQuery.sizeOf(context);
    final double width = size.width;
    // final double height = size.height;

    return Scaffold(
      // Main view
      body: Padding(
        //
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),

        child: ListView(
          children: [
            //
            CustomSizedRow(
              // Sizing
              width: width,
              height: 450,
              children: [
                // Used to Project configurations (name, description,package, flutter or dart)
                ProjectConfigCard(),

                //
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      // Used to simple project preview info(Name, flutter or dart, description)
                      ProjectPreviewCard(),

                      // Used to generate project (.sh, .bat, zip)
                      ProjectGenerateCard(),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            //
            CustomSizedRow(
              // Sizing
              width: width,
              height: 450,
              children: [
                // Used to view project folder structure (view, add, remove, update)
                FolderStructureCard(),

                //
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      // Used to set suported platforms (android, ios,linux, ...)
                      PlatformsCard(),

                      // Used to set packages (bloc, provider, getIt, ...)
                      PackagesCard(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
