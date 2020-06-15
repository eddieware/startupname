import 'package:flutter/cupertino.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var _textStyle = new TextStyle(fontSize: 20);
  final numeros=['Uno','Dos','Tres','Cuatro','Cinco'];
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
        child: RandomWords() 
            ),
           
           
             


          
        );
     
  }


}

class RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  
  final _biggerFont = const TextStyle(fontSize: 28.0);
  // TODO Add build() method
 @override
  Widget build(BuildContext context) {
    
    return _buildSuggestions();
  }






  Widget _buildSuggestions() {
    
  return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: /*1*/ (context, i) {
        if (i.isOdd) return Spacer(); /*2*/

        final index = i ~/ 2; /*3*/
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          // here we add the simulation spacer
          
          
        }
       
        
        
        return _buildRow(_suggestions[index]);
      });
}

Widget _buildRow(WordPair pair) {
  
return Container(
  padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
      
          border: Border(
            
            bottom:
                    BorderSide(width: 1.0, color: CupertinoColors.separator,),
          )
        ),

  child:   Row(
   children: <Widget>[
      Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
   ],
    ),
);
}

}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}
