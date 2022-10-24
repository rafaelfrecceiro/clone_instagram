import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_fundamentos/models/users_model.dart';

class StoriesBar extends StatelessWidget {
  final List<UsersModel> users;
  const StoriesBar({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 100,
      maxWidth: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var user = users[math.Random().nextInt(users.length)]; //listAvatars[math.Random().nextInt(15)];
          //var name = users[math.Random().nextInt(users.length)].name; //listNames[math.Random().nextInt(15)];
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  width: 75,
                  height: 75,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.pink,
                        Colors.yellow,
                      ],
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/profile', arguments: user);
                      },
                      child: CircleAvatar(
                        radius: 35,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                            user.image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(user.name),
              )
            ],
          );
        },
      ),
    );
  }
}

/*
CircleAvatar(
              radius: 50,
              ,
            ),
 */

/*
Container(
  width: 100,
  child: CircleAvatar(
    radius: 50,
    backgroundImage: ExactAssetImage('assets/images/restaurant.jpg'),
  ),
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: Colors.red,
      width: 4.0,
    ),
  ),
),
*/

/*
CircleAvatar(
            radius: 50,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                listAvatars[math.Random().nextInt(16)],
              ),
            ),
          );
*/

/*
Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    listAvatars[math.Random().nextInt(15)],
                  ),
                  fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(
                Radius.circular(50.0),
              ),
              border: Border.all(
                color: const Color(0xff434343),
                width: 4.0,
              ),
            ),
          );
*/
