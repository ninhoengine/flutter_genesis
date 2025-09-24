import 'package:flutter/material.dart';
import 'custom_expanded_card.dart';

/// Card for generating the project files and structure.
/// Includes options to download as ZIP, generate shell (.sh) or batch (.bat) scripts.
class ProjectGenerateCard extends StatelessWidget {
  const ProjectGenerateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedCard(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and subtitle for the generation card
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.build, color: Colors.blue, size: 30),
            title: Text(
              'Generate project',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade400,
              ),
            ),

            subtitle: Text(
              'Create your project files and structure',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Divider(color: Colors.grey.shade300),

          // Generation options: ZIP, .sh, .bat
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 10,
              children: [
                //
                ElevatedButton.icon(
                  icon: const Icon(Icons.file_download, size: 18),
                  label: const Text('zip'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {}, // TODO: Implement ZIP generation
                ),

                ElevatedButton.icon(
                  icon: const Icon(Icons.terminal, size: 18),
                  label: const Text('.sh'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {}, // TODO: Implement shell script generation
                ),

                ElevatedButton.icon(
                  icon: const Icon(Icons.bug_report, size: 18),
                  label: const Text('.bat'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {}, // TODO: Implement batch script generation
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
