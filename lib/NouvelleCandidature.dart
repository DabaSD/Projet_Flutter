import 'package:flutter/material.dart';
import 'package:projet_flutter/Services/recuperationCandidatures.dart';
import 'package:projet_flutter/Services/recuperationPostes.dart';


class MyCandidature extends StatefulWidget {
  const MyCandidature({Key? key, required bool debugShowCheckedModeBanner})
      : super(key: key);

  @override
  State<MyCandidature> createState() => _MyCandidatureState();
}

class _MyCandidatureState extends State<MyCandidature> {

final _formKey = GlobalKey<FormState>();
final job = TextEditingController();
final nom = TextEditingController();
final prenom = TextEditingController();
final email = TextEditingController();
final telephone = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Nouvelle candidature"),
            backgroundColor: const Color.fromARGB(255, 85, 187, 231)),
        // ignore: prefer_const_constructors
        body: SingleChildScrollView(
            // ignore: prefer_const_constructors
            child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(height: 20),
             TextField(
              controller: job,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.work),
                  hintText: 'job',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
             TextField(
              controller: nom,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                 hintText: 'Nom',
                  border: UnderlineInputBorder()),
            ),
            
            const SizedBox(height: 10),
              TextField(
                controller: prenom,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                 hintText: 'Prenom',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
             TextField(
              controller: email,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                 hintText: 'Email',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
             TextField(
              controller: telephone,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                 hintText: 'Téléphone',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today),
                 hintText: 'Date de naissance',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on),
                 hintText: 'Rénumeration demandée',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.attach_money_rounded),
                 hintText: 'Rénumeration proposée',
                  // hintText: 'indiquer votre date de naissance',
                  border: UnderlineInputBorder()),
            ),
             const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.monetization_on),
                  prefixIcon: Icon(Icons.calendar_today),
                 hintText: 'Description',
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
                  onPressed: () {
                    
                  },
                  child: const Text('Creer'),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
