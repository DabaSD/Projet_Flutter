import 'package:flutter/material.dart';

void main() {
  runApp(const Mytestf());
}

class Mytestf extends StatelessWidget {
  const Mytestf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 85, 187, 231),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 248, 249, 250))),
            onPressed: () {},
            child: const Text('Candidature',
                style: TextStyle(color: Color.fromARGB(255, 98, 168, 226))),
          ),
          ElevatedButton(
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 248, 249, 250))),
            onPressed: () {},
            child: const Text('Notes',
                style: TextStyle(color: Color.fromARGB(255, 98, 168, 226))),
          ),
          ElevatedButton(
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 248, 249, 250))),
            onPressed: () {},
            child: const Text('Fichiers jointes',
                style: TextStyle(color: Color.fromARGB(255, 98, 168, 226))),
          ),
          ElevatedButton(
            style: const ButtonStyle(
                padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 248, 249, 250))),
            onPressed: () {},
            child: const Text('Evenements',
                style: TextStyle(color: Color.fromARGB(255, 98, 168, 226))),
          ),
        ],
      ),
    );
  }
}



/*class MyTestfatima extends StatelessWidget {
  const MyTestfatima({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma page'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('Candidature'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Notes'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Fichiers joints'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Événements'),
          ),
        ],
      ),
    );
  }
}
*/
