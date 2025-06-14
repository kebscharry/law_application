import 'package:flutter/material.dart';
import 'package:law_application/articles_page.dart';
import 'package:law_application/home_page.dart';

import 'contact_page.dart';
import 'know_more.dart';

//same appbar for all pages
class BaseScaffold extends StatelessWidget {
  final Widget body;

  const BaseScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        automaticallyImplyLeading: false, // Removes default back arrow
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: 10), // Space between avatar and text
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "Lawyers\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  TextSpan(
                      text: "Legal Services",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                ],
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        // Moves the drawer to the right
        backgroundColor: Colors.green[500],
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[400]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close, color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.align_vertical_bottom_outlined,
                  color: Colors.white),
              title: Text("About Us", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KnowMore()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_balance, color: Colors.white),
              title: Text("What We Do", style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => LawFirmPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.white),
              title: Text("Team", style: TextStyle(color: Colors.white)),
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => AboutUsPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.article, color: Colors.white),
              title: Text("Articles", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ArticlesPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page, color: Colors.white),
              title: Text("Contact", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContactPage()));
              },
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
