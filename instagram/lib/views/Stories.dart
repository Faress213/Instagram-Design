import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listen/main.dart';
import 'package:listen/views/myStory.dart';

class Stories extends StatelessWidget {
  const Stories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5,),
        SizedBox(
          height: 100,
          child: ListView.builder(
              shrinkWrap: false,
              physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.normal),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ((context, index) {
                return MyStory(myStory: counter == index);
              })),
        )
      ],
    );
  }
}
