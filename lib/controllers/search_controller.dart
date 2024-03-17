// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:soeasy/constants/constants.dart';
import 'package:soeasy/models/foods_model.dart';

class SearchFoodController extends GetxController {
  RxBool _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  set setLoading(bool value) {
    _isLoading.value = value;
  }

  RxBool _isTriggered = false.obs;

  bool get isTriggered => _isTriggered.value;

  set setTrigger(bool value) {
    _isTriggered.value = value;
  }

  List<FoodsModel>? searchResults;

  void searchFoods(String key) async {
    setLoading = true;

    Uri url = Uri.parse("$appBaseUrl/api/foods/search/$key");

    try {
      var response = await http.get(url);

      if (response.statusCode == 200) {
        searchResults = foodsModelFromJson(response.body);
        setLoading = false;
      } else {
        setLoading = false;
      }
    } catch (e) {
      setLoading = false;
      debugPrint(e.toString());
    }
  }
}
