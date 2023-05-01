import 'package:flutter/material.dart';

import '../model/model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    List<TodoModel> m1 =
    ModalRoute.of(context)!.settings.arguments as List<TodoModel>;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ADD');
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),

        body: ListView.builder(
          itemCount: m1.length,
          itemBuilder: (context, index) {
            return con(
              m1[index].name!,
              m1[index].skill!,
            );
          },
        ),
      ),
    );
  }
  Widget con(String name, String skill) {

    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 6.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 0.0),
            ),
          ],
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "NAME.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "$name",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Skill.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "$skill",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context,'EDIT');
              },
              icon: Icon(
                Icons.edit,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}