import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home screen"),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: getPosts(),
        builder: (_, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          var objectsList = snapshot.data ?? [];

          return objectsList.isNotEmpty
              ? ListView.builder(
                  itemCount: objectsList.length,
                  itemBuilder: (BuildContext context, int index) {

                    var item = objectsList[index];

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        title: Text(item['title'].toString()),
                        subtitle: Text(item['body'].toString()),
                        leading: Text(item['id'].toString()),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        tileColor: Colors.grey.shade200,
                      ),
                    );
                  },
                )
              : Center(
                  child: Text("No data"),
                );
        },
      ),
    );
  }

  Future<List<Map<String, dynamic>>> getPosts() async {
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var jsonDecodedList = jsonDecode(response.body) as List;
    var objectsList = jsonDecodedList.map((e) => e as Map<String, dynamic>).toList();
    return objectsList;
  }
}
