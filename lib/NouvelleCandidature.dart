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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: const Text("Nouvelle candidature"),
            backgroundColor: Color.fromARGB(255, 1, 58, 105)),
        body: Center(
            child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'job',
                  hintText: 'indiquer votre job',
                  border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Nom complet',
                  hintText: 'entrer votre nom ',
                  border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'indiquer votre Email',
                  border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Telephone',
                  hintText: 'indiquer votre numero Telephone',
                  border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Date de naissance',
                  hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Renumeration demandée',
                  // hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Renumeration proposée',
                  // hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 5, 66, 116))),
                onPressed: () {},
                child: Text("Envoyer"),
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 5, 66, 116))),
                onPressed: () {},
                child: Text("Annuler"),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
