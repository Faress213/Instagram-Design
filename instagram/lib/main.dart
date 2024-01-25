import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:listen/views/Stories.dart';
import 'package:listen/views/myStory.dart';

void main() {
  runApp(const HomePage());
}

int counter = 0;
ScrollController scrollController = ScrollController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: InkWell(
            onTap: () {
              
              scrollController.animateTo(0.0,duration:const Duration(milliseconds:200 ),curve: Curves.easeIn);
            },
            child: const Text(
              'Instagram',
              style: TextStyle(fontFamily: 'Pacifico', fontSize: 30),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.heart)),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.facebookMessenger,
                ))
          ],
        ),
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            const SliverToBoxAdapter(
              child: Stories(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(height: 5),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('assets/messi.jpg'),
                              radius: 16,
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Lionel Messi'),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz))
                      ],
                    ),
                    Container(
                      height: 300,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/messi.jpg'),
                              fit: BoxFit.fill)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(FontAwesomeIcons.heart)),
                            InkWell(
                              onTap: (){},
                              child: const SizedBox(
                                height: 22,
                                width: 22,
                                child: Image(
                                  image: AssetImage('assets/comment.png'),
                                  fit: BoxFit.fill,
                                  color: Colors.white,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(FontAwesomeIcons.bookmark))
                      ],
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14.0, vertical: 4),
                      child: Text('289 likes'),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 14.0),
                      child: Text('Lionel Messi'),
                    )
                  ],
                ),
              );
            }))
          ],
        ),
      ),
    );
  }
}
