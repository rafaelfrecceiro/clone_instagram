import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/widgets/posts.dart';
import 'package:flutter_fundamentos/widgets/stories_bar.dart';

import '../../models/users_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final users = <UsersModel>[
      UsersModel(name: 'Astolfo', image: 'https://mir-s3-cdn-cf.behance.net/project_modules/disp/b3053232163929.567197ac6e6f5.png', posts: 42, followers: 5242, following: 523),
      UsersModel(
          name: 'Gioconda',
          image: 'https://dt2sdf0db8zob.cloudfront.net/wp-content/uploads/2019/12/9-Best-Online-Avatars-and-How-to-Make-Your-Own-for-Free-image1-5.png',
          posts: 542,
          followers: 324,
          following: 77),
      UsersModel(
          name: 'Astrid',
          image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLS8-R7IL7YVFFN44i2W5jX1fJacSQxxK8iTPA-L8qqLQTbuay3LgliKJUfPCzdyiqWR0&usqp=CAU',
          posts: 33,
          followers: 21,
          following: 4),
      UsersModel(
          name: 'Khalimba',
          image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLS8-R7IL7YVFFN44i2W5jX1fJacSQxxK8iTPA-L8qqLQTbuay3LgliKJUfPCzdyiqWR0&usqp=CAU',
          posts: 657,
          followers: 5,
          following: 2),
      UsersModel(
          name: 'Epah',
          image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLS8-R7IL7YVFFN44i2W5jX1fJacSQxxK8iTPA-L8qqLQTbuay3LgliKJUfPCzdyiqWR0&usqp=CAU',
          posts: 4342,
          followers: 544,
          following: 23),
      UsersModel(
          name: 'Huarta',
          image:
              'https://scontent.fbfh14-1.fna.fbcdn.net/v/t1.18169-9/1459301_378801605584271_968602413_n.png?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFbZoxjg5jUs_UpoNvZzv6jSQOUikh0dD5JA5SKSHR0Pm345NoVK8_o4Vtc5JfpBEX0Q3fMrlyOxaRtDk3iQeue&_nc_ohc=VQdn9FDuLEYAX-0kgeC&_nc_ht=scontent.fbfh14-1.fna&oh=00_AT-Ijq96nMSwPdfnBFB4CosbU12iW_m_GFjChlRCTs-WBg&oe=637C2D28',
          posts: 7776,
          followers: 235,
          following: 2324),
      UsersModel(
          name: 'Xilindro',
          image: 'https://img.freepik.com/vetores-premium/rosto-de-jovem-negro-com-barba-retrato-masculino-ou-avatar-em-estilo-plano-vista-frontal_497399-251.jpg?w=2000',
          posts: 35737,
          followers: 44,
          following: 4234),
      UsersModel(
          name: 'Cassaba',
          image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa8Luglga9J2R3Bxt_PsWZISUHQWODD6_ZTAJ5mIQgxYCAE-YbkY81faTqp-hSA_jVPTs&usqp=CAU',
          posts: 37,
          followers: 986,
          following: 876),
      UsersModel(name: 'Astrid', image: 'https://openclipart.org/image/800px/313668', posts: 42, followers: 5242, following: 523),
      UsersModel(
          name: 'Lolica',
          image: 'https://static.vecteezy.com/ti/vetor-gratis/p1/2275818-avatar-feminino-mulher-perfil-icone-para-rede-vetor.jpg',
          posts: 98787,
          followers: 77,
          following: 723),
      UsersModel(
          name: 'Robato',
          image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAd7SeoDA2PxCcdbtBxBAHYw1xiP_CpXmRFyKSyyiC2Pr_A_vf34p816fwajWCCR9eHBo&usqp=CAU',
          posts: 375,
          followers: 537,
          following: 52213),
      UsersModel(name: 'Fefez', image: 'https://pbs.twimg.com/media/EbNX_erVcAUlwIx.jpg', posts: 42, followers: 5242, following: 523),
    ];

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
                      child: StoriesBar(users: users),
                    ),
                  ),
                ],
              ),
              const Posts(image: 'https://m.media-amazon.com/images/I/81g-7SUWiUL.png'),
              const Posts(image: 'https://i.pinimg.com/564x/0d/bf/55/0dbf55e9b1150e947c0778ef00bfeefe.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
