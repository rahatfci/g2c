import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:g2c/screens/check_list/data.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const AlertDialog(
              title: Center(child: CircularProgressIndicator()));
        } else if (snapshot.hasError) {
          return const Text(
            "Something went wrong",
            style: TextStyle(fontSize: 20),
          );
        } else {
          if (snapshot.data!.snapshot.value == null) {
            return const ListTile(
              title: Text("No items available"),
            );
          } else {
            Map data = snapshot.data!.snapshot.value as Map;
            List<Item> items = [];
            data.forEach((key, value) {
              items.add(Item(key, value['item']));
            });
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  shape: const Border(
                    bottom: BorderSide(width: 1.5, color: Colors.black54),
                  ),
                  onLongPress: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              scrollable: true,
                              contentPadding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 20, bottom: 10),
                              actionsAlignment: MainAxisAlignment.spaceEvenly,
                              content: const Text(
                                "Delete?",
                                style: TextStyle(color: Colors.black54),
                                textAlign: TextAlign.center,
                              ),
                              actions: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 20)),
                                  onPressed: () {
                                    deleteFromList(items[i].id, context);
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text(
                                        "Check List Item Deleted",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      duration: Duration(seconds: 1),
                                    ));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Delete',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ));
                  },
                  title: Text(
                    items[i].title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          }
        }
      },
      stream: getList(context),
    );
  }
}
