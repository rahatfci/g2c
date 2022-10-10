import 'package:flutter/material.dart';
import 'package:g2c/screens/check_list/data.dart';

import 'body.dart';

class CheckList extends StatefulWidget {
  const CheckList({Key? key}) : super(key: key);

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  final formKey = GlobalKey<FormState>();
  TextEditingController itemField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            height: 200,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.lightBlue, Colors.lightGreen])),
            child: const Center(
              child: Text(
                "Check-List",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ),
        body: const Body(),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(
            bottom: 25.0,
          ),
          child: FloatingActionButton(
            elevation: 12,
            onPressed: () => showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      scrollable: true,
                      contentPadding: const EdgeInsets.only(
                          left: 12, right: 12, top: 20, bottom: 10),
                      actionsAlignment: MainAxisAlignment.spaceEvenly,
                      content: Form(
                        key: formKey,
                        child: TextFormField(
                          controller: itemField,
                          style: const TextStyle(fontSize: 18),
                          cursorHeight: 25,
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(width: 2)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(width: 2)),
                            hintText: "Check Item",
                            hintStyle: TextStyle(fontSize: 18),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter an item";
                            }
                            return null;
                          },
                        ),
                      ),
                      actions: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 20)),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              addToList(itemField.text, context);
                              itemField.clear();
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Add Check Item',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
