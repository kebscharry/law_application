import 'package:flutter/material.dart';

import 'base_scaffold.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset("assets/partners.jpg",
                  width: double.infinity, height: 200, fit: BoxFit.cover),
              Positioned(
                bottom: 10,
                left: 16,
                child: Column(
                  children: [
                    Text("GET IN TOUCH",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text("CONTACT",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ]),
            //intro
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Give Us a call or email\n us",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Text(
                "Our team of knowledgeable, pragmatic and\ndynamic lawyers with exceptional credentials and\nextensive experience are ready to assist you",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                            "Mayfair Business Center, 5th Floor, Musapo\nclose, off Parklands Road, Westlands,")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 4,
                        ),
                        Text("020 2500 195 | 0777 727 104 | 0757 130 384")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.mail),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "contact@moadvocates.co.ke",
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.pink,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
