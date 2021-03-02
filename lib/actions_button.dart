import 'package:flutter/material.dart';
import 'screen.dart';

class ActionButton extends StatefulWidget {
  Icon icon;

  String nameOfTheButton;

  Color colorOfTheButton;

  Color colortapped = Colors.grey;

  ActionButton(
      this.icon, this.nameOfTheButton, this.colorOfTheButton, this.colortapped);

  @override
  _ActionButtonState createState() => _ActionButtonState(
      this.icon, this.nameOfTheButton, this.colorOfTheButton, this.colortapped);
}

class _ActionButtonState extends State<ActionButton> {
  Icon icon;

  String nameOfTheButton;

  Color colorOfTheButton;

  Color colortapped = Colors.grey;

  _ActionButtonState(
      this.icon, this.nameOfTheButton, this.colorOfTheButton, this.colortapped);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      /*  onPanStart: (DragStartDetails e) {
        setState(() {
          colortapped = myColors[LONGPRESSEDBUTTONCOLOR];
        });
      },
      onPanEnd: (DragEndDetails e) {
        setState(() {
          colortapped = myColors[LONGPRESSEDBUTTONCOLOR];
        });
      },*/
      /* onLongPressStart: (LongPressStartDetails e) {
        setState(() {
          colortapped = myColors[LONGPRESSEDBUTTONCOLOR];
        });
      },
      onLongPressEnd: (LongPressEndDetails e) {
        setState(() {
          colortapped = myColors[PRIMARY];
        });
      },*/
      onTap: () {
        setState(() {
          Future.delayed(const Duration(milliseconds: 300), () {
            setState(() {
              colortapped = myColors[PRIMARY];
            });
          });

          colortapped = myColors[LONGPRESSEDBUTTONCOLOR];
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: colortapped,
          child: Row(
            children: [
              icon,
              SizedBox(
                width: 30,
              ),
              Text(
                nameOfTheButton,
                style: TextStyle(color: colorOfTheButton, fontSize: 35),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
