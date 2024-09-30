import 'package:http/http.dart' as http;

class ApiProvider {
  static Future<http.Response> getDataApi(String getUrl) async {
    var url = Uri.parse(getUrl);
    var response = await http.get(url).timeout(const Duration(seconds: 60));
    return response;
  }
}
