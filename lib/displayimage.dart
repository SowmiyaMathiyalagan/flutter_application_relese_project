import 'package:flutter/material.dart';


import 'appdata_image.dart';
class DisplayImage extends StatelessWidget {
  final AppData appData;
  const DisplayImage({Key? key, required this.appData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(appData.image),
          fit: BoxFit.cover,

        ),
      ),
    );
  }
}
