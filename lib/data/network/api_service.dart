import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseWeather =
      'https://server-proxy-weather.amobilab.com/proxy/swtapi';
  static const String _baseAqi =
      'https://server-proxy-weather.amobilab.com/proxy/airapi';

  final Map<String, String> _headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // =========================
  // 🌤 Weather API
  // =========================
  Future<Map<String, dynamic>> getCurrentWeather(String param) async {
    final uri = Uri.parse('$_baseWeather/api.php?param=$param');
    final response = await http.get(uri, headers: _headers);
    return _handleResponse(response);
  }

  // =========================
  // 🏭 AQI (Air Quality) API
  // =========================
  Future<Map<String, dynamic>> getAirQuality(String param) async {
    final uri = Uri.parse('$_baseAqi/airquality.php?param=$param');
    final response = await http.get(uri, headers: _headers);
    return _handleResponse(response);
  }

  // =========================
  // 🔁 Shared handler
  // =========================
  Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('❌ API Error ${response.statusCode}');
    }
  }
}
