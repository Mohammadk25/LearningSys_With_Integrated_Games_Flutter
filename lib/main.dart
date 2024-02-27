import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Example',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhET Number Play Game'),
      ),
      body: Center(
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse('https://phet.colorado.edu/sims/html/number-play/latest/number-play_all.html'),
          ),
        ),
      ),
    );
  }
}
