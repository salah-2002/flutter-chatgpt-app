import 'dart:convert';
import 'package:http/http.dart' as http;

class ChatGPTService {
  final String apiKey = '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'; // replace this

  Future<String> sendMessage(String message) async {
    const endpoint = 'https://openrouter.ai/api/v1/chat/completions';

    final response = await http.post(
      Uri.parse(endpoint),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
        'HTTP-Referer': 'https://yourapp.com', // optional but recommended
        'X-Title': 'chatgpt_flutter_app',      // optional name for tracking
      },
      body: jsonEncode({
        "model": "deepseek/deepseek-r1:free",
        "messages": [
          {"role": "user", "content": message}
        ]
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['choices'][0]['message']['content'];
    } else {
      throw Exception('Failed to connect to OpenRouter: ${response.body}');
    }
  }
}
