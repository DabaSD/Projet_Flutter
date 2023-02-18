import 'package:flutter/material.dart';
import 'package:projet_flutter/liste.dart';

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
                  hintText: 'job',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
             const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                 hintText: 'Nom',
                  border: UnderlineInputBorder()),
            ),
            
            const SizedBox(height: 10),
              const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Nom complet',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
             const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
             const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  hintText: 'Telephone',
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
                  hintText: 'Renumeration demandée',
                  border: UnderlineInputBorder()),
            ),
            const SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.attach_money_rounded),
                  hintText: 'Renumeration proposée',
                  border: UnderlineInputBorder()),
            ),
             
            const SizedBox(height: 10),
            const TextField(
                maxLines: 5,
                decoration: InputDecoration(
                    hintText: 'Description',
                    border: OutlineInputBorder())),
            const SizedBox(height: 10),
            const TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_today),
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    hintText: 'Date de création',
                    border: UnderlineInputBorder())),
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
                  onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyLinks()),
            );
                  },
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
