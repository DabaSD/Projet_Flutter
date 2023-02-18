import 'dart:convert';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:http/http.dart' as http;

import '../models/Candidature.dart';

Future<List<Candidature>> allCandidatures() async {
  var token = await SessionManager().get('token');
  const api = "https://dkentertainment.with6.dolicloud.com/api/index.php/recruitment/candidature";
  final response=await http.Client(). get(Uri.parse(api),
  headers: ({'DOLAPIKEY': token.toString()}));

  if(response.statusCode==200){
    List candidatures = json.decode(response.body) as List;
    return candidatures.map((candidatures) => Candidature.fromJson(candidatures)).toList();
  }else{
    throw Exception('Impossible de récupérer les candidatures');
  }
}