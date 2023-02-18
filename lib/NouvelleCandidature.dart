import 'package:flutter/material.dart';
import 'package:projet_flutter/Testfatima.dart';

void main() {
  runApp(const MyCandidature(
    debugShowCheckedModeBanner: false,
  ));
}

class MyCandidature extends StatefulWidget {
  const MyCandidature({Key? key, required bool debugShowCheckedModeBanner})
      : super(key: key);

  @override
  State<MyCandidature> createState() => _MyCandidatureState();
}

class _MyCandidatureState extends State<MyCandidature> {
  String? dropdownvalue = 'Brouillon';

  var items = [
    'Brouillon',
    'Reçu',
    'Contrat proposé',
    'Contrat signé',
    'Refusé',
    'Annulé'
  ];
  final _formKey = GlobalKey<FormState>();
  late String _email;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Nouvelle candidature"),
            backgroundColor: const Color.fromARGB(255, 85, 187, 231)),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.work),
                  labelText: 'job',
                  hintText: 'indiquer votre job',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: 'Nom complet',
                  hintText: 'entrer votre nom ',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'EMail',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  hintText: 'indiquer votre Email',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Telephone',
                  hintText: 'indiquer votre numero Telephone',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.calendar_today),
                  labelText: 'Date de naissance',
                  hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.monetization_on),
                  labelText: 'Renumeration demandée',
                  // hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  // prefixIcon: Icon(Icons.attach_money_rounded),
                  labelText: 'Renumeration proposée',
                  // hintText: 'indiquer votre date de naissance',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    labelText: 'Description',
                    //hintText: 'ajouter une description',
                    border: OutlineInputBorder())),
            const SizedBox(height: 10),
            const TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.calendar_today),
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    labelText: 'Date de création',
                    hintText: 'indiquer la date de creation',
                    border: OutlineInputBorder())),
            const SizedBox(height: 10),
            const Text("Etat :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            DropdownButton(
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((items) {
                  return DropdownMenuItem(value: items, child: Text(items));
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue;
                  });
                }),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Mytestf()));
                  },
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
          ],
        )),
      ),
    );
  }
}
