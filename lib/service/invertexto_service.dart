import 'dart:convert';
import 'package:http/http.dart' as http;

final String _token = "15480|ewu2n1Wtdnj2BBDjnWvDlHbfrzNLvcXm";

Future<Map> converterNumeroPorExtenso(String? _valor) async{
  http.Response response;
  response = await http.get(Uri.parse("https://api.invertexto.com/v1/number-to-words?token=$_token&number=$_valor&language=pt&currency=BRL"));
  return json.decode(response.body);
}
Future<Map> buscaCEP(String? _valor) async{
  http.Response response;
  response = await http.get(Uri.parse("https://api.invertexto.com/v1/cep/$_valor?token=$_token"));
  return json.decode(response.body);
}
Future<Map> validador_email(String? _valor) async{
  http.Response response;
  response = await http.get(Uri.parse("https://api.invertexto.com/v1/email-validator/$_valor?token=$_token"));
  return json.decode(response.body);
}
