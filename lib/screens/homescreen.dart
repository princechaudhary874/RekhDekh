import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final catNames = ['brain', 'heart', 'lungs', 'kidney', 'ear'];
  final catImages = [
    'assets/brain.png',
    'assets/heart.png',
    'assets/lungs.png',
    'assets/kidney.png',
    'assets/ear.png',
  ];
  final docImg = [
    'assets/doctor.png',
    'assets/doctor.png',
    'assets/doctor.png',
    'assets/doctor.png',
    'assets/doctor.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RekhDekh', style: TextStyle(color: Colors.green)),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //search bar

                  Container(
                    height: 47,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      // ignore: prefer_const_literals_to_create_immutables
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.black,
                          spreadRadius: 3,
                          blurRadius: 5,
                          //offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Search for doctors',
                        hintStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // card for doctor ,hospital and  blood bank
                  const SizedBox(height: 20),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        const Expanded(
                          child: Card(
                            elevation: 5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Image.asset('assets/doctor.png', height: 50),
                                SizedBox(height: 10),
                                Text('Doctors', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                          ),
                        ),
                        //card for hospital and blood bank
                        const SizedBox(width: 20),
                        Column(
                          children: [
                            Expanded(
                              child: Container(
                                width: 180,
                                height:
                                    180, // Increased height to accommodate larger image
                                child: Card(
                                  color: Colors.green,
                                  elevation: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween, // Space between text and image
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center, // Center vertically
                                      children: [
                                        // Left side: Text widgets
                                        const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Align text to start (left)
                                          children: [
                                            Text('Hospitals',
                                                style: TextStyle(fontSize: 16)),
                                            SizedBox(
                                                height:
                                                    5), // Spacing between text elements
                                            Text('only seat booking',
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        // Right side: Image widget
                                        Flexible(
                                          
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 10), // Margin between text and image
                                            height:
                                                120, // Set desired height for the image
                                            // Set desired width for the image
                                            child: Image.asset(
                                                'assets/hospitals.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                           Expanded(
                              child: Container(
                                width: 180,
                                height:
                                    180, // Increased height to accommodate larger image
                                child: Card(
                                  color: Colors.green,
                                  elevation: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween, // Space between text and image
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center, // Center vertically
                                      children: [
                                        // Left side: Text widgets
                                        const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Align text to start (left)
                                          children: [
                                            Text('Blood Bank',
                                                style: TextStyle(fontSize: 16)),
                                            SizedBox(
                                                height:
                                                    5), // Spacing between text elements
                                            Text('Request blood',
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                        // Right side: Image widget
                                        Flexible(
                                          
                                          child: Container(
                                            margin: const EdgeInsets.only(
                                                left: 10), // Margin between text and image
                                            height:
                                                120, // Set desired height for the image
                                            // Set desired width for the image
                                            child: Image.asset(
                                                'assets/images/blood.png'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                           ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
