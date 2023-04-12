import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {

  final iconpath;
  final String categoryname;
  CategoryCard({ required this.categoryname,required this.iconpath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Image.asset(iconpath),
            Text(categoryname),
          ],
        ),
      ),
    );
  }
}

