import 'package:flutter/material.dart';

import 'know_more.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyHomePage(),
    );
  }
}

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
            Text.rich(TextSpan(children: [
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
            ],),),
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
              child: Text("Menu",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KnowMore()));
              },
            ),
            ListTile(
              leading: Icon(Icons.align_vertical_bottom_outlined, color: Colors.white),
              title: Text("About Us", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_balance, color: Colors.white),
              title: Text("What We Do", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.white),
              title: Text("Team", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.article, color: Colors.white),
              title: Text("Articles", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_page, color: Colors.white),
              title: Text("Contact", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //header text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SizedBox(
                        width:
                            constraints.maxWidth, // Set max width dynamically
                        child: Text.rich(
                          TextSpan(
                            text: "Trusted Legal Expertise\nRooted in ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 40, // Keep it large but responsive
                            ),
                            children: [
                              TextSpan(
                                text: "Integrity and\n", // Grey-colored text
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: "Excellence", // Grey-colored text
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          textAlign:
                              TextAlign.start, // Ensures proper alignment
                          softWrap: true, // Enables word wrapping
                          overflow:
                              TextOverflow.visible, // Ensures it doesn’t clip
                        ),
                      );
                    },
                  ),
                ),

                //description paragraph
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Our firm offers comprehensive legal services across non-\n"
                    "litigation and litigation areas, grounded in a strong commitment\n"
                    "to the advocate code of ethics.",
                  ),
                ),

                //elevated button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    // Makes the button stretch across the screen
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[400],
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 15), // Increases button height
                      ),
                      onPressed: () {},
                      child: Text("Free Consultation",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/partners.jpg"),
                        ),
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 540,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.green[400],
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Our Practice Areas & Services",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Narrowing our activity ensures we have a continuous\n pulse on the latest trends, precedents, and casa law, and\n are at the",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 130,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.green[400],
                                            child: Icon(
                                              Icons.people_alt_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Divorce",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Expert support through divorce complexities and\n legal resolutions.",
                                            style: TextStyle(
                                                color: Colors.grey[400]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 130,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.green[400],
                                            child: Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Agreements",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Crafting solid agreements for your legal peace of\n mind and protection.",
                                            style: TextStyle(
                                                color: Colors.grey[400]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 130,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.green[400],
                                            child: Icon(
                                              Icons.people_alt_outlined,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Property",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Expert guidance in property matters for a seamless\n legal experience.",
                                            style: TextStyle(
                                                color: Colors.grey[400]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
