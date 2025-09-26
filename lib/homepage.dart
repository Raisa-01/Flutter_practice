import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  final String image;
  final String batch;
  final String seat;
  final String days;
  final String name;

  const HomePageCard({
    super.key,
    required this.image,
    required this.batch,
    required this.seat,
    required this.days,
    required this.name,
  });


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width as int;

    return SizedBox(
      width: (screenWidth-16) / 2,
      height: 340,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8)
              ),
              child: Image.network(
                image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Text('ব্যাচ $batch', style: TextStyle(fontSize: 10)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Text('$seat সিট বাকি', style: TextStyle(fontSize: 10)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Text('$days দিন বাকি', style: TextStyle(fontSize: 10)),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'বিস্তারিত দেখি',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            SizedBox(width: 6),
                            Icon(Icons.arrow_forward, size: 16, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}