// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class doctorCard extends StatelessWidget {

  final String doctorImagepath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  doctorCard({required this.doctorImagepath,required this.doctorName,required this.doctorProfession,required this.rating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: 8,left: 8.0,right: 8.0),
          child: Column(
            children: [
              //Image of Doctor
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                doctorImagepath,
                height: 100,
              ),
              ),

              SizedBox(height: 10),
              //Rating
              Row(
                children: [
                  Icon(Icons.star,
                  color: Colors.yellow[600],
                  ),
                  Text(rating,style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),

              //Doctor Name
              Text(doctorName,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,

              ),),

              //Dr Title
              Text(doctorProfession),
            ],

          ),
        ),
      ),
    );
  }
}
