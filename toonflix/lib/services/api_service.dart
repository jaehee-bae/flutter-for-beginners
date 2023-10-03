import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String today = "today";

  Future<List<WebtoonModel>> getTodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final uri = Uri.parse('$baseUrl/$today');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final List<dynamic> toons = jsonDecode(response.body);
      for (var toon in toons) {
        final instance = WebtoonModel.fromJson(toon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }
}
