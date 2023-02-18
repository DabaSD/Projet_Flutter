import 'dart:convert';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:http/http.dart' as http;

import '../models/Poste.dart';

Future<List<Poste>> allPostes() async {
  var token = await SessionManager().get('token');
  const api = "https://dkentertainment.with6.dolicloud.com/api/index.php/recruitment/jobposition";
  final response=await http.Client(). get(Uri.parse(api),
  headers: ({'DOLAPIKEY': token.toString()}));

  if(response.statusCode==200){
    List postes = json.decode(response.body) as List;
    return postes.map((postes) => Poste.fromJson(postes)).toList();
  }else{
    throw Exception('Impossible de récupérer les postes');
  }
}