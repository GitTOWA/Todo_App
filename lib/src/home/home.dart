// lib/screens/home.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/constants/colors.dart';
import 'package:todo_app/models/item.dart';
import 'package:todo_app/controllers/todoController.dart';
import '../home/components/addTodo.dart';
import '../home/components/appBar.dart';
import '../home/components/searchBox.dart';
import '../home/components/todoItems.dart';

class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ToDoController(),
      child: Scaffold(
        backgroundColor: customRed,
        appBar: CustomAppBar(),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                children: [
                  Consumer<ToDoController>(
                    builder: (context, controller, _) => SearchBox(
                      onSearchChanged: controller.runFilter,
                    ),
                  ),
                  Expanded(
                    child: Consumer<ToDoController>(
                      builder: (context, controller, _) => ListView(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 50,
                              bottom: 20,
                            ),
                            child: Text(
                              'ToDos',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          for (ToDo todoo in controller.foundToDo.reversed)
                            ToDoItems(
                              todo: todoo,
                              onToDoChanged: controller.handleToDoChange,
                              onDeleteItem: controller.deleteToDoItem,
                            ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Consumer<ToDoController>(
                builder: (context, controller, _) => AddToDo(
                  controller: controller.todoController,
                  onAdd: () =>
                      controller.addToDoItem(controller.todoController.text),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
