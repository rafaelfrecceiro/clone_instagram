import 'package:flutter/material.dart';
import 'dart:math' as math;

class StoriesBar extends StatelessWidget {
  var listAvatars = <String>[
    'https://mir-s3-cdn-cf.behance.net/project_modules/disp/b3053232163929.567197ac6e6f5.png',
    'https://dt2sdf0db8zob.cloudfront.net/wp-content/uploads/2019/12/9-Best-Online-Avatars-and-How-to-Make-Your-Own-for-Free-image1-5.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLS8-R7IL7YVFFN44i2W5jX1fJacSQxxK8iTPA-L8qqLQTbuay3LgliKJUfPCzdyiqWR0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLS8-R7IL7YVFFN44i2W5jX1fJacSQxxK8iTPA-L8qqLQTbuay3LgliKJUfPCzdyiqWR0&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLS8-R7IL7YVFFN44i2W5jX1fJacSQxxK8iTPA-L8qqLQTbuay3LgliKJUfPCzdyiqWR0&usqp=CAU',
    'https://scontent.fbfh14-1.fna.fbcdn.net/v/t1.18169-9/1459301_378801605584271_968602413_n.png?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFbZoxjg5jUs_UpoNvZzv6jSQOUikh0dD5JA5SKSHR0Pm345NoVK8_o4Vtc5JfpBEX0Q3fMrlyOxaRtDk3iQeue&_nc_ohc=VQdn9FDuLEYAX-0kgeC&_nc_ht=scontent.fbfh14-1.fna&oh=00_AT-Ijq96nMSwPdfnBFB4CosbU12iW_m_GFjChlRCTs-WBg&oe=637C2D28',
    'https://img.freepik.com/vetores-premium/retrato-de-um-jovem-com-barba-e-estilo-de-cabelo-avatar-masculino-ilustracao-vetorial_266660-423.jpg?w=2000',
    'https://img.freepik.com/vetores-premium/rosto-de-jovem-negro-com-barba-retrato-masculino-ou-avatar-em-estilo-plano-vista-frontal_497399-251.jpg?w=2000',
    'https://openclipart.org/image/800px/313668',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSa8Luglga9J2R3Bxt_PsWZISUHQWODD6_ZTAJ5mIQgxYCAE-YbkY81faTqp-hSA_jVPTs&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWy4mGn2H4biENdFN-hIutdbAB9-aXVl08sXAzq_fFY4feDadOGQJH5kHBM1adSIKL2W0&usqp=CAU',
    'https://static.vecteezy.com/ti/vetor-gratis/p1/2275818-avatar-feminino-mulher-perfil-icone-para-rede-vetor.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAd7SeoDA2PxCcdbtBxBAHYw1xiP_CpXmRFyKSyyiC2Pr_A_vf34p816fwajWCCR9eHBo&usqp=CAU',
    'https://i.pinimg.com/736x/18/78/5d/18785dd07c09465d01beef679baf1846.jpg',
    'https://pbs.twimg.com/media/EbNX_erVcAUlwIx.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkl6icrJsQQ6AJnxTvsgjMLa7Fj4Bdsc0p9EFcmB2bWQZuahdDTyHPAuXUB3zrW8OqKdI&usqp=CAU'
  ];

  var listNames = <String>[
    'Astolfo',
    'Astrid',
    'Gioconda',
    'Martinica',
    'Alefano',
    'Jorez',
    'Khalimba',
    'Zuretis',
    'Epah',
    'Garimps',
    'Lolica',
    'Huarta',
    'Fefez',
    'Robato',
    'Xilindro',
    'Cassaba'
  ];

  StoriesBar({super.key});

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
          var image = listAvatars[math.Random().nextInt(15)];
          var name = listNames[math.Random().nextInt(15)];
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
                        Navigator.of(context).pushNamed('/profile', arguments: {
                          'name': name,
                          'image': image,
                        });
                      },
                      child: CircleAvatar(
                        radius: 35,
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Text(name),
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