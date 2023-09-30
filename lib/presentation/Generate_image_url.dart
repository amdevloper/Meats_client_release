import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


class GenerateImageUrl {
  late bool success;
  late String message;

  late bool isGenerated;
  late String uploadUrl;
  late String downloadUrl;

  Future<void> call(String fileType) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      int? userId = prefs.getInt('restarantId');

      Map body = {"fileType": fileType};

      var response = await http.post(
        Uri.parse(
            'http://ec2-34-227-30-202.compute-1.amazonaws.com/api/upload'),
        // headers: {
        //   'Content-Type': 'application/json',
        //   'Authorization': token!,
        // },
        body: body,
      );

      var result = jsonDecode(response.body);

      print(result);

      if (result['success'] != null) {
        success = result['success'];
        message = result['message'];

        if (response.statusCode == 201) {
          isGenerated = true;
          uploadUrl = result["uploadUrl"];
          downloadUrl = result["downloadUrl"];
        }
      }
    } catch (e) {
      throw ('Error getting url');
    }
  }
}
