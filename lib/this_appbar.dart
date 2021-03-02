import 'package:flutter/material.dart';

Widget ThisAppBar(bool direction, Function onpressed) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.white,
    leading: Padding(
      padding: EdgeInsets.only(top: 10, left: 8),
      child: InkWell(
        onTap: () {},
        child: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.grey,
          size: 55,
        ),
      ),
    ),
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(65),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ROOF',
              style:
                  TextStyle(color: Colors.black, fontSize: 20, wordSpacing: 10),
            ),
            InkWell(
              onTap: onpressed,
              child: Icon(
                (direction)
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 6, right: 10),
      child: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
            'https://media.timeout.com/images/103375433/630/472/image.jpg'),
      ),
    ),
  );
}
