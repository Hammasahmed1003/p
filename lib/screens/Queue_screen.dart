import 'package:flutter/material.dart';
import 'package:podcastapp/custom/queue_section.dart';

class QueueScreen extends StatelessWidget {
  const QueueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                child: QueueSection()),
          );
        });
    
  }
}
