import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'utilities/categoryCard.dart';
import 'utilities/doctorCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hello,',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Dr.Hashim',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.person)),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_0fhlytwe.json'),

                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How Do you Feel',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          SizedBox(height: 12),
                          Text(
                            'Fill your Medical card roght now',
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 12),
                          Center(
                            child: Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(child: Text('Get Started')),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: 'How can we help you!',
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryCard(
                      iconpath: 'lib/images/head.png', categoryname: 'Head'),
                  CategoryCard(
                      iconpath: 'lib/images/heart.png', categoryname: 'Heart'),
                  CategoryCard(
                      iconpath: 'lib/images/medicine.png',
                      categoryname: 'Medici'),
                  CategoryCard(
                      iconpath: 'lib/images/tooth.png', categoryname: 'Tooth'),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Doctor List',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  doctorCard(
                    doctorImagepath: 'lib/images/man.png',
                    rating: '4.9',
                    doctorName: 'Dr.Bharat',
                    doctorProfession: 'Radiologists ',
                  ),

                  doctorCard(
                    doctorImagepath: 'lib/images/man2.png',
                    rating: '4.9',
                    doctorName: 'Dr.Aryavarta',
                    doctorProfession: 'Neurologists ',
                  ),
                  doctorCard(
                    doctorImagepath: 'lib/images/teacher.png',
                    rating: '4.9',
                    doctorName: 'Dr.Hindustan',
                    doctorProfession: 'Audiologist',
                  ),
                  doctorCard(
                    doctorImagepath: 'lib/images/user.png',
                    rating: '4.9',
                    doctorName: 'Dr.Tenjiku',
                    doctorProfession: 'Dermatologist',
                  ),
                  doctorCard(
                    doctorImagepath: 'lib/images/woman.png',
                    rating: '4.9',
                    doctorName: 'Dr.Jambudweep',
                    doctorProfession: 'Urologist',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
