import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  //function
  openMap() async {
    // Android
    var url = Uri.parse('https://play.google.com/store/apps/details?id=eHR.Android');
    if (Platform.isIOS) {
      // iOS
      url = Uri.parse('https://play.google.com/store/apps/details?id=eHR.Android');
    }
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calling another App'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //open map app xxxxxx
            openMap();
          },
          child: const Text('Open Maps'),
        ),
      ),
    );
  }
}
