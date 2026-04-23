// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff131629),
        appBar: AppBar(
          title: Text(
            "Business Card",
            style: TextStyle(color: Colors.white, fontFamily: "Pacifico"),
          ),
          backgroundColor: Color(0xff131629),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Image
              // Image.asset(
              //   "assets/images/logo_withoutBG.png",
              //   height: 200,
              //   width: 200,
              // ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/logo_withoutBG.png"),
              ),
              //Name
              Text(
                "Business Card",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Pacifico",
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 24),
              //title
              Text(
                "Flutter Dev",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Pacifico",
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 24),
              //divider
              Divider(indent: 25, endIndent: 25, color: Colors.amber),
              // email
              IconTitleComponent(icon: Icons.email, title: "Email.com"),
              // phone
              IconTitleComponent(icon: Icons.phone, title: "91832641"),
              //social media
              Row(
                children: [
                  CustomLogo(path: "assets/images/facebook.png"),
                  Spacer(),
                  CustomLogo(path: "assets/images/instagram.png"),
                  Spacer(),
                  CustomLogo(path: "assets/images/tiktok.png"),

                  //!Bad Code -- اوعي تعمل كدا هقتلك
                  // Image.asset(
                  //   "assets/images/instagram.png",
                  //   height: 60,
                  //   width: 60,
                  // ),
                  // Image.asset(
                  //   "assets/images/tiktok.png",
                  //   height: 60,
                  //   width: 60,
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(path, height: 60, width: 60);
  }
}

class IconTitleComponent extends StatelessWidget {
  const IconTitleComponent({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Color(0xff0cc0df), Color(0xff005996)],
        ),
      ),
      child: Row(
        children: [
          //icon
          Icon(icon, size: 35),
          SizedBox(width: 16),
          //title
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Pacifico",
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
