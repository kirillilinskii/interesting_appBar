import 'package:flutter/material.dart';
import 'actions_button.dart';

const DARKORANGE = 'dark orange';
const PINK = 'pink';
const PRIMARY = 'primary';
const LONGPRESSEDBUTTONCOLOR = 'longpressedbuttoncolor';

Map<String, Color> myColors = {
  'dark orange': Color(0xFFf2af50),
  'pink': Color(0xFFff627b),
  'primary': Colors.grey[50],
  'longpressedbuttoncolor': Colors.grey[100],
};

class ScreenChanges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActionButton(
            Icon(
              Icons.celebration,
              color: myColors[DARKORANGE],
              size: 40,
            ),
            'Open Profile',
            myColors[DARKORANGE],
            Colors.grey[50]),
        ActionButton(
            Icon(
              Icons.bolt,
              color: myColors[DARKORANGE],
              size: 40,
            ),
            'King&Queen',
            myColors[DARKORANGE],
            Colors.grey[50]),
        ActionButton(
          Icon(
            Icons.meeting_room,
            color: myColors[PINK],
            size: 40,
          ),
          'Leave Party',
          myColors[PINK],
          Colors.grey[50],
        ),
      ],
    );
  }
}
