import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart';
 
 
void main() => runApp(MyApp());
 
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _textStyle = new TextStyle(fontSize: 20, color: CupertinoColors.white);

  @override
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();

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
            //child: Text(wordPair.asPascalCase),
             child: RandomWords(),
          ),
        ),
      ),
    );
  }
  
}

class RandomWordsState extends State<RandomWords> {
  // TODO Add build() method
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}