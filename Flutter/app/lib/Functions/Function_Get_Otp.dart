import 'package:dio/dio.dart';

class Function_Get_Otp {
  Function_Get_Otp();

  static Future<String> getOtp(String email) async {
    String url = 'https://smit188.pythonanywhere.com/' + email;

    try {
      Response response = await Dio().get(url);

      if (response.statusCode == 200) {
        return response.data.toString();
      } else {
        throw Exception('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      throw Exception('Failed to fetch OTP');
    }
  }
}
