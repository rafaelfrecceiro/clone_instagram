import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/widgets/posts.dart';
import 'package:flutter_fundamentos/widgets/stories_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram'),
        actions: [
          Transform.rotate(
            angle: -0.75,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.send),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: StoriesBar(),
                    ),
                  ),
                ],
              ),
              const Posts(
                  image: 'https://m.media-amazon.com/images/I/81g-7SUWiUL.png'),
              const Posts(
                  image:
                      'https://i.pinimg.com/564x/0d/bf/55/0dbf55e9b1150e947c0778ef00bfeefe.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
