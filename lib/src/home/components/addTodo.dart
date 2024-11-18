// lib/widgets/add_todo.dart
import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class AddToDo extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdd;

  const AddToDo({Key? key, required this.controller, required this.onAdd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
              bottom: 40,
              right: 20,
              left: 30,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 1,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 0),
                  blurRadius: 10,
                  spreadRadius: 0,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Add a new todo item',
                border: InputBorder.none,
                hintStyle: TextStyle(color: customRed),
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: 40,
            right: 30,
          ),
          child: ElevatedButton(
            onPressed: onAdd,
            child: Text(
              '+',
              style: TextStyle(fontSize: 30, color: customRed),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              minimumSize: Size(50, 50),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
