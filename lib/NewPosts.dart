import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _recruiterController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _futureController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _salaryController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: const Row(
              children: [
                Icon(Icons.local_post_office),
                SizedBox(width: 10),
                Text(
                  "Nouveaux Postes",
                style: TextStyle(fontSize: 24,color: Colors.blue ),
                )
            ],
            ),
            backgroundColor: Colors.grey,
            ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Intitulé du poste",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      hintText: "Saisissez l'intitulé du poste", filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                     "Nombre de postes disponibles",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  TextField(
                    controller: _quantityController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Saisissez le nombre de postes disponibles",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Responsable du recrutement",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  TextField(
                    controller: _recruiterController,
                    decoration: const InputDecoration(
                      hintText: "Saisissez le nom du responsable du recrutement",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Email recruteur",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Saisissez l'email du recruteur",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Responsable futur",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  TextField(
                    controller: _futureController,
                    decoration: const InputDecoration(
                      hintText: "Saisissez le nom du responsable futur",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Date souhaitée",
                    style: TextStyle(fontSize: 24, color: Colors.white),
    ),
                  TextField(
                    controller: _dateController,
                    decoration: const InputDecoration(
                      hintText: "Saisissez la date souhaitée",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Rémunération",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  TextField(
                    controller: _salaryController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      hintText: "Saisissez la rémunération",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  TextField(
                    controller: _descriptionController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      hintText: "Saisissez la description",
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
              // code pour créer le poste
                 },
                        child: const Text("Créer le poste"),
          ),
                      ElevatedButton(
                        onPressed: () {
              // code pour annuler
            },
                        child: const Text(
                            "Annuler"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
