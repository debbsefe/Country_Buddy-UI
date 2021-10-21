import 'dart:io';

import 'package:country_buddy/countries_list/models/countries_list_model.dart';
import 'package:country_buddy/countries_list/repo/api_status_code.dart';
import 'package:country_buddy/utils/constant.dart';
import 'package:http/http.dart' as http;

class CountriesService {
  static Future<Object> getCountries() async {
    try {
      var response = await http
          .get(Uri.parse("https://restcountries.com/v2/continent/europe"));
      if (SUCCESS == response.statusCode) {
        return Success(response: countryBuddyFromJson(response.body));
      }
      return Failure(code:USER_INVALID_RESPONSE, erresponse: "Invalid response");
    } on HttpException {
      return Failure(code: NO_INTERNET , erresponse: "No Internet");
    }on FormatException{
      return Failure(code: INVALID_FORMAT, erresponse: "Invalid Format");
    } catch (e) {
      return Failure(code: UNKNOWN_ERROR, erresponse: "Unknow error");
    }
  }
}