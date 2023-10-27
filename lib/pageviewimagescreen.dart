


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_sowmiya/appdata_image.dart';
import 'package:flutter_application_sowmiya/navbar.dart';


import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import 'displayimage.dart';
import 'indicator.dart';

class PageViewImageScreen extends StatefulWidget {
  const PageViewImageScreen({Key? key}) : super(key: key);

  @override
  State<PageViewImageScreen> createState() => _PageViewImageScreenState();
}

class _PageViewImageScreenState extends State<PageViewImageScreen> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Text('J.K Rowling Quotes'),
        backgroundColor: Colors.indigo.shade900,
        actions: [
          PopupMenuButton<int>(
            itemBuilder:(context) => [
              PopupMenuItem(value:1, child: Text('Share'))
            ],
            onSelected: (value){
              if(value == 1){
                shareInfo();
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 450,
            width: 600,
            child:PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                itemCount:appDataList.length,
                itemBuilder:(context, Index){
                  return DisplayImage(
                    appData: appDataList[Index],
                  );
                }
            ) ,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    appDataList.length,
                        (index) => Indicator(isActive: selectedIndex == index ? true : false)),
              ],
            ),
          ),
        ],
      ),

    );
  }
  shareInfo()async{
    ByteData imagebyte = await rootBundle.load(appDataList[selectedIndex].image);
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/download.jpg';
    File(path).writeAsBytesSync(imagebyte.buffer.asUint8List());
    await Share.shareFiles([path], text: 'Image Shared');
  }
}
