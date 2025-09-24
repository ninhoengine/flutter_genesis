import 'package:flutter/material.dart';
import 'custom_expanded_card.dart';

/// Card for viewing and managing the folder/file structure under lib/.
/// Allows adding, editing, and removing files/folders (UI only).
class FolderStructureCard extends StatelessWidget {
  const FolderStructureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomExpandedCard(
      flex: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title and subtitle
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(Icons.folder_open, color: Colors.blue, size: 30),
            title: Text(
              'Folder structure',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade400,
              ),
            ),
            subtitle: Text(
              'View and manage your project folders and files',
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Divider(color: Colors.grey.shade300),
          // Tree view (static example, no expansion)
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              child: ListView(
                primary: true,
                children: [
                  _FolderRow(
                    name: 'lib',
                    children: [
                      _FolderRow(
                        name: 'src',
                        children: [
                          _FileRow(name: 'main.dart'),
                          _FolderRow(
                            name: 'widgets',
                            children: [
                              _FileRow(name: 'custom_expanded_card.dart'),
                              _FileRow(name: 'custom_sized_row.dart'),
                            ],
                          ),
                          _FolderRow(
                            name: 'views',
                            children: [_FileRow(name: 'home_view.dart')],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FolderRow extends StatelessWidget {
  final String name;
  final List<Widget> children;
  const _FolderRow({required this.name, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 4, bottom: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.folder, color: Colors.blue, size: 18),
              const SizedBox(width: 6),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.create_new_folder,
                  color: Colors.blueAccent,
                  size: 18,
                ),
                tooltip: 'Add folder',
                onPressed: () {}, // UI only
              ),
              IconButton(
                icon: const Icon(
                  Icons.note_add,
                  color: Colors.blueAccent,
                  size: 18,
                ),
                tooltip: 'Add file',
                onPressed: () {}, // UI only
              ),
              IconButton(
                icon: const Icon(Icons.edit, color: Colors.blueGrey, size: 18),
                tooltip: 'Edit folder',
                onPressed: () {}, // UI only
              ),
              IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.redAccent,
                  size: 18,
                ),
                tooltip: 'Remove folder',
                onPressed: () {}, // UI only
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

class _FileRow extends StatelessWidget {
  final String name;
  const _FileRow({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 2, bottom: 2),
      child: Row(
        children: [
          Icon(Icons.insert_drive_file, color: Colors.blueGrey, size: 16),
          const SizedBox(width: 6),
          Text(name, style: const TextStyle(fontSize: 13)),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.blueGrey, size: 18),
            tooltip: 'Edit file',
            onPressed: () {}, // UI only
          ),
          IconButton(
            icon: const Icon(Icons.delete, color: Colors.redAccent, size: 18),
            tooltip: 'Remove file',
            onPressed: () {}, // UI only
          ),
        ],
      ),
    );
  }
}
