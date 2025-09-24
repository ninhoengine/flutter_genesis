import 'package:flutter/material.dart';
import 'custom_expanded_card.dart';

/// Card that previews the current project configuration: name, description, packages, etc.
class ProjectPreviewCard extends StatelessWidget {
  const ProjectPreviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedCard(
      flex: 6,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and subtitle
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.visibility, color: Colors.blue, size: 30),
            title: Text(
              'Project preview',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade400,
              ),
            ),
            subtitle: Text(
              'See your project summary before generating',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          SizedBox(height: 10),

          Divider(color: Colors.grey.shade300),

          Spacer(),

          // Project name
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              spacing: 5,
              children: [
                const Icon(Icons.label, color: Colors.blueGrey, size: 18),
                Expanded(
                  child: Text(
                    'Name: my_app',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
          ),

          // Project description
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                const Icon(Icons.description, color: Colors.blueGrey, size: 18),
                Expanded(
                  child: Text(
                    'Description: A personalized new Flutter project with a long description that should not overflow or break the layout. It will be truncated if too long.',
                    style: const TextStyle(fontSize: 15, color: Colors.black54),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),

          // Project packages
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              spacing: 5,
              children: [
                const Icon(Icons.extension, color: Colors.blueGrey, size: 18),
                Expanded(
                  child: Text(
                    'Packages: provider, get_it, bloc, some_other_package_that_is_very_long',
                    style: const TextStyle(fontSize: 15, color: Colors.black54),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
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
