import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String image;

  const Posts({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          height: 10,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLS8-R7IL7YVFFN44i2W5jX1fJacSQxxK8iTPA-L8qqLQTbuay3LgliKJUfPCzdyiqWR0&usqp=CAU'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('giraldinho_montanha'),
            ),
            const Spacer(),
            PopupMenuButton(
              itemBuilder: (context) => [],
            )
          ],
        ),
        Image.network(image),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.heart_broken_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chat_bubble_outline,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send_outlined,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.flag_outlined,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                    ),
                    text: 'giraldinho_montanha',
                  ),
                  TextSpan(
                    text: ' Veja a foto desse jogo maneirasso!!',
                  )
                ],
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Ver todos os 1450 comentários',
            ),
          ),
        )
      ],
    );
  }
}
