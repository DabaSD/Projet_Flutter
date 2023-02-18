import 'package:flutter/material.dart';

class MyCandidature extends StatefulWidget {
  const MyCandidature({Key? key, required bool debugShowCheckedModeBanner})
      : super(key: key);
  const MyCandidature({Key? key, required bool debugShowCheckedModeBanner})
      : super(key: key);

  @override
  State<MyCandidature> createState() => _MyCandidatureState();
}

class _MyCandidatureState extends State<MyCandidature> {
  //final _formKey = GlobalKey<FormState>;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
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
                  prefixIcon: Icon(Icons.work),
                  prefixIcon: Icon(Icons.work),
                  labelText: 'job',
                  hintText: 'Indiquer votre job',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Nom complet',
                  hintText: 'Entrer votre nom ',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                  hintText: 'Indiquer votre Email',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Téléphone',
                  hintText: 'Indiquer votre numero téléphone',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today),
                  prefixIcon: Icon(Icons.calendar_today),
                  labelText: 'Date de naissance',
                  hintText: 'Indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.monetization_on),
                  labelText: 'Rénumeration demandée',
                  // hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.attach_money_rounded),
                  labelText: 'Rénumeration proposée',
                  // hintText: 'indiquer votre date de naissance',
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
                  child: Text('Annuler'),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 98, 168, 226))),
                  onPressed: () {},
                  child: const Text('Creer'),
                ),
              ],
            )
            /* Container(
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
                  child: Text('Annuler'),
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 98, 168, 226))),
                  onPressed: () {},
                  child: const Text('Creer'),
                ),
              ],
            )
            /* Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
              child: ElevatedButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 98, 168, 226))),
                onPressed: () {},
                child: 
                const Text("Creer"),
                
                child: 
                const Text("Creer"),
                
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
            */
            */
          ],
        )),
      ),
    );
  }
}
