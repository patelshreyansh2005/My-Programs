import 'package:flutter/material.dart';

import 'database/myDatabase.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Database CRUD',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: FutureBuilder(
        builder: (context, snapshotcopy) {
          if (snapshotcopy.hasData) {
            return FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data);
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(snapshot.data![index]["userID"]
                                      .toString()),
                                ],
                              ),
                            ),
                            Text(snapshot.data![index]["userName"].toString()),
                          ],
                        ),
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else {
                  return CircularProgressIndicator();
                }
              },
              future: MyDatabase().getDetails(),
            );
          } else {
            return Center(
              child: Text('coping...'),
            );
          }
        },
        future: MyDatabase().copyPasteAssetFileToRoot(),
      ),
    );
  }
}
