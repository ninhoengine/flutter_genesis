import 'package:flutter/material.dart';
import 'custom_expanded_card.dart';

/// Card for selecting supported platforms for the project.
class PlatformsCard extends StatelessWidget {
  const PlatformsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedCard(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and subtitle
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.devices, color: Colors.blue, size: 30),
            title: Text(
              'Supported platforms',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade400,
              ),
            ),
            subtitle: Text(
              'Select platforms for your project',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Divider(color: Colors.grey.shade300),

          // Platform selection chips
          Wrap(
            spacing: 12,
            runSpacing: 8,
            children: [
              //
              FilterChip(
                label: Text('Android'),
                selected: true,
                avatar: Icon(Icons.android, color: Colors.green),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                onSelected: (v) {},
              ),

              FilterChip(
                label: Text('iOS'),
                selected: true,
                avatar: Icon(Icons.phone_iphone, color: Colors.blueGrey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                onSelected: (v) {},
              ),

              FilterChip(
                label: Text('Web'),
                selected: false,
                avatar: Icon(Icons.web, color: Colors.blue),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                onSelected: (v) {},
              ),

              FilterChip(
                label: Text('Windows'),
                selected: false,
                avatar: Icon(Icons.desktop_windows, color: Colors.blueAccent),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                onSelected: (v) {},
              ),

              FilterChip(
                label: Text('macOS'),
                selected: false,
                avatar: Icon(Icons.laptop_mac, color: Colors.grey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                onSelected: (v) {},
              ),

              FilterChip(
                label: Text('Linux'),
                selected: false,
                avatar: Icon(Icons.laptop, color: Colors.black54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                onSelected: (v) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
