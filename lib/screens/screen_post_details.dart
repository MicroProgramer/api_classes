import 'package:api_classes/controllers/post_controller.dart';
import 'package:api_classes/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenPostDetails extends StatelessWidget {
  PostModel model;

  @override
  Widget build(BuildContext context) {
    var postController = Get.put(PostController(postId: model.id));

    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(model.body),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.grey.shade400),
            ),
            Obx(() {
              return Text(
                "Comments (${postController.commentsList.length})",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              );
            }).paddingAll(5),
            Obx(() {
              return ListView.builder(
                itemCount: postController.commentsList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  var item = postController.commentsList[index];
                  return ListTile(
                    title: Text(item.email),
                    subtitle: Text(item.body),
                    leading: Icon(Icons.person_2_rounded, size: 50,),
                  );
                },
              );
            })
          ],
        ),
      ),
    );
  }

  ScreenPostDetails({
    required this.model,
  });
}
