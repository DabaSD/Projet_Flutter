import 'package:flutter/material.dart';

class MyPoste extends StatefulWidget {
  const MyPoste({Key? key, required bool debugShowCheckedModeBanner})
      : super(key: key);

  @override
  State<MyPoste> createState() => _MyPosteState();
}

class _MyPosteState extends State<MyPoste> {
  //final _formKey = GlobalKey<FormState>;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Nouveau Poste"),
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
                  prefixIcon: Icon(Icons.work),
                  labelText: 'Intitulé du poste',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  //prefixIcon: Icon(Icons.person),
                  labelText: 'Nombre de postes disponibles',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Responsable du recrutement',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email recruteur',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Responsable futur',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.monetization_on),
                  prefixIcon: Icon(Icons.calendar_today),
                  labelText: 'Date souhaitée',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                   prefixIcon: Icon(Icons.attach_money_rounded),
                  labelText: 'Rénumeration',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 98, 168, 226))),
                  onPressed: () {},
                  child: const Text('Annuler'),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 98, 168, 226))),
                  onPressed: () {},
                  child: const Text('Créer'),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
