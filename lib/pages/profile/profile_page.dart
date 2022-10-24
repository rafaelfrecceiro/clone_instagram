import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    var profileSelected = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text(profileSelected['name']),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
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
                        child: CircleAvatar(
                          radius: 35,
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: NetworkImage(
                              profileSelected['image'],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Text(profileSelected['name']),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [
                    Text('22', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Publicações'),
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [
                    Text('326', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Seguidores'),
                  ],
                ),
                const Spacer(),
                Column(
                  children: const [
                    Text('917', style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Seguindo'),
                  ],
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 5.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Essa é minha bio\nVerifque as últimas fotos!\nParcerias: parceria@gmail.com'),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.28,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color(0xff444444),
                          ),
                        ),
                        child: const Text('Seguindo'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.28,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color(0xff444444),
                          ),
                        ),
                        child: const Text('Mensagem'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.27,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color(0xff444444),
                          ),
                        ),
                        child: const Text('Email'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: SizedBox(
                      width: 33,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Color(0xff444444),
                          ),
                        ),
                        child: const Icon(Icons.people_outlined),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
