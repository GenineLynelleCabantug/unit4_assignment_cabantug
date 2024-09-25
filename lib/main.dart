import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 253, 253, 253),
        appBar: AppBar(
          title: Text(
            'GENINE LYNELLE CABANTUG BSIT - 3B',
            style: TextStyle(fontSize: 18),
          ),
          backgroundColor: const Color.fromARGB(255, 205, 148, 233),
        ),
        body: Stack(
          children: [
            //bg image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.jpg'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Section
                  Row(
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(255, 138, 110, 143), width: 2),
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage('images/profile.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Genine Lynelle Cabantug',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text (
                               'Hello world and hello everyone!',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 77, 2, 132),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                        color: Colors.white, 
                        boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 67, 67, 67).withOpacity(0.5),
                              spreadRadius: 0.10,
                              blurRadius: 0.5,
                              offset: Offset(1, 0.5),
                            ),
                          ],
                        ),
                        child: Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(2),
                            1: FlexColumnWidth(3),
                          },
                          children: [
                            
                            TableRow(
                              decoration: BoxDecoration(color: const Color.fromARGB(255, 239, 236, 255)),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'Personal Information',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Details',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          
                            buildInfoTableRow(Icons.cake, 'Birthday', 'May 23, 2004'),
                            buildInfoTableRow(Icons.location_on, 'Address', 'Barangay Adlawan, Roxas City, Capiz'),
                            buildInfoTableRow(Icons.email, 'Email', 'geninelynelle.cabantug@wvsu.edu.ph'),
                            buildInfoTableRow(Icons.school, 'School', 'West Visayas State University'),
                            buildInfoTableRow(Icons.star_border_purple500_rounded, 'Hobbies', 'Graphic Design, Watching anime, and Cosplaying'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // All About Me Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40),
                      Center(
                        child: Text(
                          'All About Me',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 239, 236, 255),
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 67, 67, 67).withOpacity(0.5),
                              spreadRadius: 0.5,
                              blurRadius: 1,
                              offset: Offset(1, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '"Graphic Design is my passion" – it might be a meme for everybody, but I dedicated my time and skills to create my own '
                              'signature artstyle for years. Hi! You can call me Nine or G9. I enjoy watching anime and reading mangas to pass time. '
                              'I always love listening to rock and pop punk music, and my favorite bands are The Cab and All Time Low. '
                              'I always deemed myself as an introvert because I am quiet and shy with strangers. Additionally, I have a deep passion '
                              'for creating digital arts and expanding my art appetite by learning various design applications. When I have free time, '
                              'I like to cosplay and meet talented people with the same hobbies. I always believed that every ounce of effort, every challenge embraced '
                              'with perseverance, ultimately blooms into the fulfillment of aspirations and reaching your dreams.',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  
  TableRow buildInfoTableRow(IconData icon, String label, String data) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(icon, size: 24),
              SizedBox(width: 8),
              Text(label),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(data),
        ),
      ],
    );
  }
}
