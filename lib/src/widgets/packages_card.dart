import 'package:flutter/material.dart';
import 'custom_expanded_card.dart';

/// Card for selecting packages to include in the project.
/// Includes a single bar for searching or adding custom packages (UI only).
class PackagesCard extends StatelessWidget {
  const PackagesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedCard(
      flex: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and subtitle
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.extension, color: Colors.blue, size: 30),
            title: Text(
              'Packages',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade400,
              ),
            ),
            subtitle: Text(
              'Search or add packages for your project',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Divider(color: Colors.grey.shade300),

          // Search/add bar (UI only)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search or add package',
                      prefixIcon: Icon(Icons.search, color: Colors.blueGrey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton.icon(
                  icon: const Icon(Icons.add, size: 18),
                  label: const Text('Add'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {}, // UI only
                ),
              ],
            ),
          ),

          // Package selection chips
          Wrap(
            spacing: 12,
            runSpacing: 8,
            children: [
              FilterChip(
                label: Text('Provider'),
                selected: true,
                avatar: Icon(Icons.account_tree, color: Colors.blue),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                onSelected: (v) {},
              ),
              FilterChip(
                label: Text('GetIt'),
                selected: false,
                avatar: Icon(Icons.extension, color: Colors.blueGrey),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                onSelected: (v) {},
              ),
              FilterChip(
                label: Text('Bloc'),
                selected: false,
                avatar: Icon(Icons.device_hub, color: Colors.green),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                onSelected: (v) {},
              ),
              FilterChip(
                label: Text('Riverpod'),
                selected: false,
                avatar: Icon(Icons.waves, color: Colors.blueAccent),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                onSelected: (v) {},
              ),
              FilterChip(
                label: Text('MobX'),
                selected: false,
                avatar: Icon(Icons.sync, color: Colors.purple),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                onSelected: (v) {},
              ),
              FilterChip(
                label: Text('Hive'),
                selected: false,
                avatar: Icon(Icons.storage, color: Colors.orange),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                onSelected: (v) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
