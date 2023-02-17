import 'package:flutter/material.dart';

void main() {
  runApp(const MyCandidature());
}

class MyCandidature extends StatefulWidget {
  const MyCandidature({Key? key}) : super(key: key);

  @override
  State<MyCandidature> createState() => _MyCandidatureState();
}

class _MyCandidatureState extends State<MyCandidature> {
  final _formKey = GlobalKey<FormState>;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Nouvelle candidature"),
            backgroundColor: const Color.fromARGB(255, 85, 187, 231)),
        // ignore: prefer_const_constructors
        body: Center(
            // ignore: prefer_const_constructors
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'job',
                  hintText: 'indiquer votre job',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Nom complet',
                  hintText: 'entrer votre nom ',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'indiquer votre Email',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Telephone',
                  hintText: 'indiquer votre numero Telephone',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Date de naissance',
                  hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Renumeration demandée',
                  // hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Renumeration proposée',
                  // hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 98, 168, 226))),
                onPressed: () {},
                child: const Text("Creer"),
              ),
            ),
            Container(
              child: ElevatedButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 98, 168, 226))),
                onPressed: () {},
                child: const Text("Annuler"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
