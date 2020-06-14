import 'package:flutter/cupertino.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  var _textStyle = new TextStyle(fontSize: 20, color: CupertinoColors.white);
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Cupertino App',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino App Bar',style: _textStyle),
          backgroundColor: CupertinoColors.activeBlue,
        ),
        child: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}