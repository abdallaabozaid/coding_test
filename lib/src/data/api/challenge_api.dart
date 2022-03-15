import 'dart:convert';

import 'package:flutter/services.dart';

class ChallengeApi {
  Future<String> getJson() {
    return rootBundle.loadString('json_data.json');
  }

  Future<Map<String, dynamic>?> getChallengeJson() async {
    try {
      final myData = json.decode(await getJson());
      await Future.delayed(const Duration(seconds: 2)); // improting json

      return myData;
    } catch (e) {
      print(" API error  in getChallengeJson : ${e.toString()}");
      return null;
    }
  }
}
