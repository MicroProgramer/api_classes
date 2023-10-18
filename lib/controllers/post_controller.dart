import 'dart:convert';

import 'package:api_classes/models/post_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/comment.dart';

class PostController extends GetxController {
  int postId;
  RxList<Comment> commentsList = RxList([]);

  @override
  void onInit() {
    super.onInit();
    fetchComments();
  }

  void fetchComments() async {
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId/comments'));
    var encodedJson = response.body;
    var objectsList = jsonDecode(encodedJson) as List;
    commentsList.value = objectsList.map((e) => Comment.fromMap(e as Map<String, dynamic>)).toList();

  }

  PostController({
    required this.postId,
  });
}
