import 'package:http/http.dart' as http;
import 'dart:convert';

class RasaService {
  final String baseUrl;

  RasaService(this.baseUrl);

  Future<String> sendMessage(String message) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/webhooks/rest/webhook'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'message': message}),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data.isNotEmpty
            ? data[0]['text']
            : 'Sem resposta do servidor Rasa.';
      } else {
        return 'Erro na comunicação com o servidor Rasa.';
      }
    } catch (e) {
      return 'Erro na comunicação com o servidor Rasa: $e';
    }
  }
}
