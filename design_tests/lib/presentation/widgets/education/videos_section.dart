import 'package:flutter/material.dart';

class VideosSection extends StatefulWidget {
  const VideosSection({super.key});

  @override
  State<VideosSection> createState() => _VideosSectionState();
}

class _VideosSectionState extends State<VideosSection> {
  List videoList = [
    'Introduction',
    'Installing on Windows',
    'Setup Emulator on Windows',
    'Creating Our First Project',
  ];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListView.builder(
      itemCount: videoList.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color:
                  index == 0 ? colors.primary : colors.primary.withOpacity(0.6),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(
            videoList[index],
          ),
          subtitle: const Text('20 min 50 sec'),
        );
      },
    );
  }
}
