import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyStory extends StatelessWidget {
  const MyStory({super.key, required this.myStory});
  final bool myStory;
  @override
  Widget build(BuildContext context) {
    return myStory
        ? const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundColor: Color.fromARGB(255, 149, 112, 0),
                  backgroundImage: AssetImage('images/ico.png'),
                ),
                Positioned(
                  bottom: 1,
                  left: 60,
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      FontAwesomeIcons.plus,
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          )
        : const Stack(children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CircleAvatar(
                radius: 45,
                backgroundColor: Color.fromARGB(255, 149, 112, 0),
                backgroundImage: AssetImage('images/ico.png'),
              ),
            ),
          ]);
  }
}
