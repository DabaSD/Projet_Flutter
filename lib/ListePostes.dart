
import 'package:flutter/material.dart';
import 'package:projet_flutter/Services/recuperationPostes.dart';
import 'package:projet_flutter/models/Poste.dart';

class ListePostes extends StatelessWidget {
  const ListePostes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liste des postes"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: PostesList(),
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

class PostesList extends StatefulWidget {
  const PostesList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PostesListState();
  }
}

class _PostesListState extends State<PostesList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Poste>>(
      future: allPostes(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          List<Poste>? postes = snapshot.data;
          return PosteListWidget(posteList: postes);
        } else {
          return const Center(
            child: Text('Erreur lors de la récupération des postes.'),
          );
        }
      },
    );
  }
}

class PosteListWidget extends StatelessWidget {
  final List<Poste>? posteList;

  const PosteListWidget({super.key, required this.posteList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: posteList?.length,
        itemBuilder: (BuildContext context, int index) {
          final poste = posteList![index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(
             "${poste.label}",

              // ignore: prefer_const_constructors
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blue,
              ),
            ),
            subtitle: Text("${poste.emailRecruiter} "),
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



