import 'package:flutter/material.dart';
import 'package:flutter_application_sowmiya/pageviewimagescreen.dart';
import 'package:flutter_application_sowmiya/quotes_page_view.dart';

import 'PersonalProfile.dart';
import 'companyprofile.dart';




class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('J.K. Rowling',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            accountEmail: Text('Version 1.0',
            style: TextStyle(
              color: Colors.black,
            ),
            ),
            currentAccountPicture: ClipOval(

              child: Image.asset(
                'images/image.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,

              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/backgroudimage.jpg',
                ),
              ),
            ),
          ),
          ListTile(
            title: Text('Quotes Text'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => QuotesPageView()));
            },
          ),
          ListTile(
            title: Text('Quotes Image'),
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => PageViewImageScreen()));
            },
          ),
          ListTile(
            title: Text('Personal Profile'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PersonalProfile()));
            },
          ),
          ListTile(
            title: Text('Company Profile'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => CompanyProfile()));
            },
          ),
        ],
      ),
    );
  }
}
