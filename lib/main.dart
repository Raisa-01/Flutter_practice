import 'package:assignment/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 13',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Assignment 13'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  HomePageCard(image: "https://cdn.ostad.app/course/photo/2024-12-17T11-35-19.890Z-Course%20Thumbnail%2012.jpg", batch: "১১", seat: "৬", days: "৬", name: "Full Stack Web Development with JavaScript (MERN)"),
                  HomePageCard(image: "https://cdn.ostad.app/course/photo/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg", batch: "৬", seat: "৮৬", days: "৪০", name: "Full Stack Web Development with Python, Django & React"),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  HomePageCard(image: "https://cdn.ostad.app/course/photo/2024-12-18T15-29-34.261Z-Untitled-1%20(23).jpg", batch: "৭", seat: "৭৫", days: "৩৯", name: "Full Stack Web Development with ASP.NET Core"),
                  HomePageCard(image: "https://cdn.ostad.app/course/photo/2024-12-18T15-24-44.114Z-Untitled-1%20(21).jpg", batch: "১৩", seat: "৬৫", days: "৪১", name: "SQA: Manual & Automated Testing"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}