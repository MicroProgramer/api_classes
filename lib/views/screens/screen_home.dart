import 'dart:convert';
import 'dart:developer';

import 'package:api_classes/controllers/home_controller.dart';
import 'package:api_classes/views/screens/screen_post_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: Obx(
        () {
          return Column(
            children: [
              Obx(() {
                return DropdownButton<int?>(
                  items: controller.usersList
                      .map((element) => DropdownMenuItem<int>(
                            child: Text(element.toString()),
                            value: element,
                          ))
                      .toList(),
                  onChanged: (value) {
                    controller.selectedUser.value = value;
                    controller.selectUser(value!);
                  },
                  value: controller.selectedUser.value,
                  hint: Text("Select user to sort"),
                );
              }),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => controller.getPosts(),
                  child: controller.sortedList.isNotEmpty
                      ? ListView.builder(
                          itemCount: controller.sortedList.length,
                          itemBuilder: (BuildContext context, int index) {
                            var item = controller.sortedList[index];

                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                onTap: () {
                                  Get.to(ScreenPostDetails(
                                    model: item,
                                  ));
                                },
                                title: Text(item.title),
                                subtitle: Text(item.body),
                                leading: Text(item.id.toString()),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                tileColor: Colors.grey.shade200,
                              ),
                            );
                          },
                        )
                      : ListView(
                          children: [
                            Center(
                              child: Text("No data"),
                            )
                          ],
                        ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
