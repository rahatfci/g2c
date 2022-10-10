import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

final DatabaseReference reference =
    FirebaseDatabase.instance.ref().child("check_list");

Stream<DatabaseEvent> getList(BuildContext context) {
  return reference.onValue;
}

Future addToList(String text, BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) =>
        const AlertDialog(title: Center(child: CircularProgressIndicator())),
  );
  await reference.push().set({'item': text}).then((value) {
    FocusManager.instance.primaryFocus!.unfocus();
    Navigator.pop(context);
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        "Check List Item Added",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
      duration: Duration(seconds: 1),
    ));
  });
}

Future deleteFromList(String id, BuildContext context) async {
  showDialog(
    context: context,
    builder: (context) =>
        const AlertDialog(title: Center(child: CircularProgressIndicator())),
  );
  await reference.child(id).remove();
}

class Item {
  String id;
  String title;

  Item(this.id, this.title);

  Item.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}
