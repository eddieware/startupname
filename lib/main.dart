import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var _textStyle = new TextStyle(fontSize: 20, color: CupertinoColors.white);
  var _textStyleList = new TextStyle(fontSize: 30);
  final List<String> letras = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      //debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Startup Name Generator', style: _textStyle),
          backgroundColor: CupertinoColors.activeBlue,
        ),
        child: Center(
            child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              child: const Center(child: Text('Entry A')),
              decoration: BoxDecoration(
                  border: Border(
                bottom:
                    BorderSide(width: 2.0, color: CupertinoColors.separator),
              )),
            ),
            Container(
              height: 50,
              child: const Center(child: Text('Entry B')),
              decoration: BoxDecoration(
                  border: Border(
                bottom:
                    BorderSide(width: 2.0, color: CupertinoColors.separator),
              )),
            ),
           Container(
              height: 50,
              child: const Center(child: Text('Entry C')),
              decoration: BoxDecoration(
                  border: Border(
                bottom:
                    BorderSide(width: 2.0, color: CupertinoColors.separator),
              )),
            ),
          ],
        )),
      ),
    );
  }

  Widget _crearPassword() {
    return Text('data1');
  }

  Widget _crearPassword1() {
    return Text('data');
  }
}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 8.0);
  // TODO Add build() method
  @override
  Widget build(BuildContext context) {
    var wordPair = WordPair.random();

    return Text('data');
  }

/*




  Widget _buildSuggestions() {
     print(_suggestions);
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Spacer(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
        }
        return _buildRow(_suggestions[index]);
      });
}

Widget _buildRow(WordPair pair) {
  print(_suggestions);
  return ListTile(
    title: Text(
      pair.asPascalCase,
      style: _biggerFont,
    ),
  );
}*/

}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
