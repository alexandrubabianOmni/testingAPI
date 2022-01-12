import 'package:http/http.dart' as http;

class ApiHelper {
  final String _baseUrl =
      'https://47b7e274-7abb-45bd-8a25-491c2a4e9d7d.mock.pstmn.io';

  Future<String> getTest(String url) async {
    try {
      final response = await http.get(Uri.parse(_baseUrl + url));
      print('dada');
      if (response.statusCode == 200) {
        print('Status code a fost 200');
        return response.body;
      }
      return 'eroare';
    } on Exception {
      print('Eroare');
      return 'eroare din catch';
    }
  }
}
