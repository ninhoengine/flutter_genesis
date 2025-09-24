import 'package:flutter/material.dart';
import 'custom_expanded_card.dart';

/// Card for configuring the new project: name, package, description, and type selection.
class ProjectConfigCard extends StatelessWidget {
  const ProjectConfigCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedCard(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          // Title and subtitle
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.settings, size: 30, color: Colors.blue),
            title: Text(
              'Project configuration',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade400,
              ),
            ),
            subtitle: const Text(
              'Enter the details for your new project',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Divider(color: Colors.grey.shade300),

          // Project type selection
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 15,
            children: [
              Chip(
                avatar: Icon(Icons.flutter_dash, color: Colors.blue.shade300),
                label: Text('Flutter', style: TextStyle(fontSize: 14)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              Chip(
                avatar: Icon(Icons.code, color: Colors.blue.shade300),
                label: Text('Dart', style: TextStyle(fontSize: 14)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ],
          ),

          Spacer(),

          // Project name, package, and description fields
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Row(
                spacing: 10,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Text(
                          'Project name',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'my_app',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Text(
                          'Project ID / Package',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'com.example.myapp',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // Description field
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'A personalized new (Flutter or Dart) project',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 16,
                      ),
                    ),
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
