import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ImagenController extends GetxController {
  var url = Uri.parse('https://api.openai.com/v1/images/generations');
  // ignore: non_constant_identifier_names
  var api_token = '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';
  final data = ''.obs;
  final isLoading = false.obs;

  Future getImage({required String imageText}) async {
    try {
      isLoading.value = true;
      var request = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $api_token',
        },
        body: jsonEncode(
          {
            'prompt': imageText,
            'n': 1,
          },
        ),
      );
      if (request.statusCode < 500) {
        isLoading.value = false;
        data.value = jsonDecode(request.body)['data'][0]['url'];
        print(data.value);
      } else {
        isLoading.value = false;
        print(jsonDecode(request.body));
      }
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
    }
    }
    }