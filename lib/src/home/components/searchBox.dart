// lib/widgets/search_box.dart
import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onSearchChanged;

  const SearchBox({Key? key, required this.onSearchChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: TextField(
        onChanged: onSearchChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: customRed,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: customRed),
        ),
      ),
    );
  }
}
