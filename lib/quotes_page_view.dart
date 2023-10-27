import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'appdata_text.dart';
import 'displaytext.dart';
import 'navbar.dart';

class QuotesPageView extends StatefulWidget {
  const QuotesPageView({Key? key}) : super(key: key);

  @override
  State<QuotesPageView> createState() => _QuotesPageViewState();
}

class _QuotesPageViewState extends State<QuotesPageView> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),

      appBar: AppBar(
        title: Text('J.K. Rowling Quotes'),
        backgroundColor: Colors.indigo.shade900,

        actions: [
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(value: 1, child: Text("Share")),
            ],
            onSelected: (value) {
              if (value == 1) {
                _shareInfo();
              }
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                controller: PageController(viewportFraction: 0.7),
                itemCount: appDataList.length,
                itemBuilder: (context, index) {
                  var _quotes = appDataList[index];
                  var _scale = selectedIndex == index ? 1.0 : 0.8;
                  return TweenAnimationBuilder(
                      tween: Tween(begin: _scale, end: _scale),
                      duration: Duration(microseconds: 300),
                      child: DisplayText(
                        appData: _quotes,
                      ),
                      builder: (context, value, child) {
                        return Transform.scale(
                          scale: value as double,
                          child: child,
                        );
                      });
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: new Text(
                    (selectedIndex + 1).toString() +
                        '/' +
                        appDataList.length.toString(),
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  _shareInfo() {
    print('------>share');

    Share.share(appDataList[selectedIndex].text);

    print(appDataList[selectedIndex].text);
  }
}
