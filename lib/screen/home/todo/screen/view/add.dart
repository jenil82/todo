import 'package:flutter/material.dart';

import '../model/model.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtskill = TextEditingController();
  List<TodoModel> AllData = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Add'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: txtname,
                style: TextStyle(
                  color: Colors.white,
                ),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  labelText: "Name",
                  labelStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: txtskill,
                decoration: InputDecoration(
                  labelText: "Skill",
                  labelStyle: TextStyle(
                    color: Colors.
                    white,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 25,
              ),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    TodoModel m2 = TodoModel(
                      name: txtname.text,
                      skill: txtskill.text,
                    );
                    AllData.add(m2);
                  });
                },
                child: Text("Add"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  TodoModel m2 = TodoModel(
                    name: txtname.text,
                    skill: txtskill.text,
                  );

                  Navigator.pushNamed(context, 'TODO', arguments: AllData);
                },
                child: Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}