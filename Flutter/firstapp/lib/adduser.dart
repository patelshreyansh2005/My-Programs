import 'package:flutter/material.dart';

import 'database/myDatabase.dart';

class AddUser extends StatefulWidget {
  Map<String, Object?>? map;

  AddUser(this.map, {super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  var nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text =
        widget.map == null ? '' : widget.map!["userName"].toString();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Card(
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(hintText: "Enter User Name"),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    if (widget.map == null) {
                      insertUser()
                          .then((value) => Navigator.of(context).pop(true));
                    } else {
                      editUser(widget.map!["userID"].toString())
                          .then((value) => Navigator.of(context).pop(true));
                    }
                  },
                  child: const Text("Submit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<int> insertUser() async {
    Map<String, Object?> map = <String, Object?>{};
    map["userName"] = nameController.text;

    var res = await MyDatabase().insertUser(map);
    return res;
  }

  Future<int> editUser(id) async {
    Map<String, Object?> map = <String, Object?>{};
    map["userName"] = nameController.text;

    var res = await MyDatabase().editUser(map, id);
    return res;
  }
}
