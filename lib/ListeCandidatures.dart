
import 'package:flutter/material.dart';
import 'package:projet_flutter/Services/recuperationCandidatures.dart';
import 'package:projet_flutter/models/Candidature.dart';

class ListeCandidatures extends StatelessWidget {
  const ListeCandidatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des candidatures"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: CandidaturesList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {/*
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const postesForm()),
          );*/
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CandidaturesList extends StatefulWidget {
  const CandidaturesList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CandidaturesListState();
  }
}

class _CandidaturesListState extends State<CandidaturesList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Candidature>>(
      future: allCandidatures(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          List<Candidature>? candidatures = snapshot.data;
          return CandidatureListWidget(candidatureList: candidatures);
        } else {
          return const Center(
            child: Text('Erreur lors de la récupération des postes.'),
          );
        }
      },
    );
  }
}

class CandidatureListWidget extends StatelessWidget {
  final List<Candidature>? candidatureList;

  const CandidatureListWidget({super.key, required this.candidatureList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: candidatureList?.length,
        itemBuilder: (BuildContext context, int index) {
          final candidature = candidatureList![index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(
             "${candidature.ref}",

              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            subtitle: Text("${candidature.lastname} ${candidature.firstname} "),
           
            onTap: () {
              /*
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserDetailsPage(user: user),
                  ));*/
            },
          );
        },
      ),
    ));
  }
}



