import 'package:flutter/material.dart';
import 'package:flutter_application_sowmiya/navbar.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text('companyprofile'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(50),
                        child: Image.asset('images/company_logo.jpg'),

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Tidy Life India pvt Ltd',
                        style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 20,
                  width: 250,
                  child: Divider(
                    color: Colors.indigo.shade900,

                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading:Icon(
                    Icons.phone,
                    color: Colors.indigo.shade900,

                  ),
                  title: Text(
                    '+91 7448973151',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading:Icon(
                    Icons.email,
                    color: Colors.indigo.shade900,
                  ),
                  title: Text(
                    'tidylifeindia@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading:Icon(
                    Icons.web_asset_rounded,
                    color: Colors.indigo.shade900,
                  ),
                  title: Text(
                    'htt://www.tidylifeindia.com/',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  leading:Icon(
                    Icons.location_city,
                    color: Colors.indigo.shade900,
                  ),
                  title: Text(
                    'No.A3.mahalakshmi flats,\nsivagami streets,\nnew perugalathur,\nchennai-600 062 ',
                    style: TextStyle(
                      fontFamily: 'caprasimo',
                      fontSize: 20,
                      color: Colors.indigo.shade900,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )


            ],

          ),


        ),
      ),
    );


  }
}
