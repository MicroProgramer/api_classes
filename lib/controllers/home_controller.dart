import 'dart:convert';

import 'package:api_classes/models/post_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  RxList<PostModel> objectsList = RxList([]);
  RxList<int> usersList = RxList([]);
  Rx<int?> selectedUser = Rx(null);
  RxList<PostModel> sortedList = RxList([]);

  @override
  void onInit() {
    objectsList.listen((list) {
      usersList.value = list.map((e) => e.userId).toSet().toList();
    });
    super.onInit();
  }

  Future<void> getPosts() async {
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var jsonDecodedList = jsonDecode(response.body) as List;
    objectsList.value = jsonDecodedList.map((e) => PostModel.fromMap(e as Map<String, dynamic>)).toList();
    sortedList.clear();
    sortedList.addAll(objectsList);
    selectedUser.value = null;
  }


  void selectUser(int id) {
    sortedList.value = objectsList.where((p0) => p0.userId == id).toList();
  }
}
