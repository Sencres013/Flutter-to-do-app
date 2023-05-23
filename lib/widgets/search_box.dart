import "package:flutter/material.dart";
import "../data/colors.dart";

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    required this.filterList,
  });

  // TODO: add proper type annotation
  final filterList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: fgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (text) => filterList(text),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: bgColor,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 30,
          ),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(color: textColor),
        ),
        style: TextStyle(color: textColor),
      ),
    );
  }
}
