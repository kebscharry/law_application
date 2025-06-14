import 'package:flutter/material.dart';
import 'package:law_application/base_scaffold.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Hero Section
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/articles_banner.jpg"), // Replace with header image
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Articles",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Heading
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Where experience matters.",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            // Article List
            _articleCard(
              image: "assets/article1.jpg",
              title: "CONSENT IN DATA PROTECTION",
              subtitle: "The legal basis of data",
              description:
                  "The Office of the Data Protection Commissioner (ODPC) issued a media frenzy when it...",
            ),
            _articleCard(
              image: "assets/article2.jpg",
              title: "THE CHILDREN ACT 2022",
              subtitle: "What’s changed? – August 2022",
              description:
                  "Did you know that a new children’s act has now passed into law? The passing of the Children Act 2022 was...",
            ),
            _articleCard(
              image: "assets/article3.jpg",
              title: "CONSTRUCTIVE TRUSTS IN LAND MATTERS",
              subtitle: "Can Trusts in Property Be Enforced?",
              description:
                  "This article explores how trusts are recognized in land disputes and family law...",
            ),
            _articleCard(
              image: "assets/article4.jpg",
              title: "Kenya Votes in the African Judicial Council",
              subtitle: "Historic moment for Kenya",
              description:
                  "We’re proud to share that Kenya has been voted to represent the African Human Rights Commission...",
            ),
            _articleCard(
              image: "assets/article5.jpg",
              title: "Landmark Ruling by Justice J. Omondi",
              subtitle: "Groundbreaking decision",
              description:
                  "Muthoga & Omari Advocates is pleased to share that our team secured a landmark ruling in...",
            ),

            // Newsletter CTA
            Container(
              padding: const EdgeInsets.all(24),
              color: Colors.black,
              child: Column(
                children: [
                  Text(
                    "Stay connected with the latest legal updates and case studies.",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: Text("JOIN OUR NEWSLETTER"),
                  )
                ],
              ),
            ),

            // Footer
            Container(
              width: double.infinity,
              color: Color(0xFF6A1B9A),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.asset("assets/logo.png", height: 50),
                  SizedBox(height: 10),
                  Text("Follow Us | Subscribe",
                      style: TextStyle(color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.linked_camera, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.facebook, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text("What We Do",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  Text("Litigation, ADR, Corporate Law, etc.",
                      style: TextStyle(color: Colors.white70),
                      textAlign: TextAlign.center),
                  SizedBox(height: 16),
                  Text("© 2025 Muthoga & Omari Advocates",
                      style: TextStyle(color: Colors.white54, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _articleCard({
    required String image,
    required String title,
    required String subtitle,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Card(
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 4),
                  Text(subtitle,
                      style: TextStyle(color: Colors.grey[700], fontSize: 14)),
                  SizedBox(height: 8),
                  Text(description,
                      style: TextStyle(fontSize: 15, color: Colors.grey[800])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
