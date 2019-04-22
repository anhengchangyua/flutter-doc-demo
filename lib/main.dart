import 'package:flutter/material.dart';
import './Layout_demo.dart';
// import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Components',
      theme: new ThemeData(
        primaryColor: Colors.blue,
      ),
      home: new ComponentsList(),
    );
  }
}

void onItemClick(int i, String articleTitle, context) {
  print(articleTitle);
  Navigator.push(context, MaterialPageRoute<void>(
    builder: (BuildContext context) {
      return LayoutCom();
    },
  ));
}

class ComponentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('组件列表'),
      ),
      body: new GestureDetector(
          child: new ListView(
            children: <Widget>[
              new ListTile(
                leading: new Icon(Icons.map),
                title: new Text('布局方式'),
              ),
              new ListTile(
                leading: new Icon(Icons.photo),
                title: new Text('Album'),
              ),
              new ListTile(
                leading: new Icon(Icons.phone),
                title: new Text('Phone'),
              ),
            ],
          ),
          onTap: () {
            onItemClick(1, '123123', context);
          }),
    );
  }
}

// class RandomWords extends StatefulWidget {
//   @override
//   createState() => new RandomWordsState();
// }

// class RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _saved = new Set<WordPair>();
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//   void _pushSaved() {
//     Navigator.of(context).push(
//       new MaterialPageRoute(
//         builder: (context) {
//           final tiles = _saved.map(
//             (pair) {
//               return new ListTile(
//                 title: new Text(
//                   pair.asPascalCase,
//                   style: _biggerFont,
//                 ),
//               );
//             },
//           );

//           final divided = ListTile.divideTiles(
//             context: context,
//             tiles: tiles,
//           ).toList();

//           return new Scaffold(
//             appBar: new AppBar(
//               title: new Text('Saved Suggestions'),
//             ),
//             body: new ListView(children: divided),
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);
//     return new ListTile(
//       title: new Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: new Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }

//   Widget _buildSuggestions() {
//     return new ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: (context, i) {
//         // 在每一列之前，添加一个1像素高的分隔线widget
//         if (i.isOdd) return new Divider();

//         final index = i ~/ 2;
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final wordPair = new WordPair.random();
//     // return new Text(wordPair.asPascalCase);
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Startup Name Generator'),
//         actions: <Widget>[
//           new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }
// }

/**
 * 基础 widget
 */

// class MyAppBar extends StatelessWidget {
//   MyAppBar({this.title});

//   // Widget子类中的字段往往都会定义为"final"

//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       height: 66.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: new BoxDecoration(color: Colors.blue[500]),
//       // Row 是水平方向的线性布局（linear layout）
//       child: new Row(
//         //列表项的类型是 <Widget>
//         children: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null, // null 会禁用 button
//           ),
//           // Expanded expands its child to fill the available space.
//           new Expanded(
//             child: title,
//           ),
//           new IconButton(
//             icon: new Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Material 是UI呈现的“一张纸”
//     return new Material(
//       // Column is 垂直方向的线性布局.
//       child: new Column(
//         children: <Widget>[
//           new MyAppBar(
//             title: new Text(
//               'Example title',
//               style: Theme.of(context).primaryTextTheme.title,
//             ),
//           ),
//           new Expanded(
//             child: new Center(
//               child: new Text('Hello, world!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(new MaterialApp(
//     title: 'My app', // used by the OS task switcher
//     home: new MyApp(),
//   ));
// }

/**
 * 使用 material 组件
 */
// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(
//     title: 'Flutter Tutorial',
//     home: new MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //Scaffold是Material中主要的布局组件.
//     return new Scaffold(
//       appBar: new AppBar(
//         leading: new IconButton(
//           icon: new Icon(Icons.menu),
//           tooltip: 'Navigation menu',
//           onPressed: null,
//         ),
//         title: new Text('Example title'),
//         actions: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//       //body占屏幕的大部分
//       body: new Center(
//         child: new Counter(),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         tooltip: 'Add', // used by assistive technologies
//         child: new Icon(Icons.add),
//         onPressed: null,
//       ),
//     );
//   }
// }

/*
 *  处理手势
 */
// class MyButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new GestureDetector(
//       onTap: () {
//         print('MyButton was tapped!');
//       },
//       child: new Container(
//         height: 36.0,
//         padding: const EdgeInsets.all(8.0),
//         margin: const EdgeInsets.symmetric(horizontal: 8.0),
//         decoration: new BoxDecoration(
//           borderRadius: new BorderRadius.circular(5.0),
//           color: Colors.lightGreen[500],
//         ),
//         child: new Center(
//           child: new Text('Engage'),
//         ),
//       ),
//     );
//   }
// }

/* 
 * 根据用户输入改变widget
 */

// class Counter extends StatefulWidget {
//   @override
//   _CounterState createState() => new _CounterState();
// }

// class CounterIncrementor extends StatelessWidget {
//   CounterIncrementor({this.onPressed});

//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return new RaisedButton(
//       onPressed: onPressed,
//       child: new Text('Increment'),
//     );
//   }
// }

// class CounterDisplay extends StatelessWidget {
//   CounterDisplay({this.count});

//   final int count;

//   @override
//   Widget build(BuildContext context) {
//     return new Text('Count: $count');
//   }
// }

// class _CounterState extends State<Counter> {
//   int _counter = 0;

//   void _increment() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Row(
//       children: <Widget>[
//         // new RaisedButton(
//         //   onPressed: _increment,
//         //   child: new Text('Increment'),
//         // ),
//         // new Text('Count: $_counter'),
//         new CounterIncrementor(onPressed: _increment),
//         new CounterDisplay(count: _counter),
//       ],
//     );
//   }
// }

/**
 *  整合购物车
 */
// class Product {
//   const Product({this.name});
//   final String name;
// }

// typedef void CartChangedCallback(Product product, bool inCart);

// class ShoppingListItem extends StatelessWidget {
//   ShoppingListItem({Product product, this.inCart, this.onCartChanged})
//       : product = product,
//         super(key: new ObjectKey(product));

//   final Product product;
//   final bool inCart;
//   final CartChangedCallback onCartChanged;

//   Color _getColor(BuildContext context) {
//     return inCart ? Colors.black54 : Theme.of(context).primaryColor;
//   }

//   TextStyle _getTextStyle(BuildContext context) {
//     if (!inCart) return null;

//     return new TextStyle(
//       color: Colors.black54,
//       decoration: TextDecoration.lineThrough,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new ListTile(
//       onTap: () {
//         onCartChanged(product, !inCart);
//       },
//       leading: new CircleAvatar(
//         backgroundColor: _getColor(context),
//         child: new Text(product.name[0]),
//       ),
//       title: new Text(product.name, style: _getTextStyle(context)),
//     );
//   }
// }

// class ShoppingList extends StatefulWidget {
//   ShoppingList({Key key, this.products}) : super(key: key);

//   final List<Product> products;

//   @override
//   _ShoppingListState createState() => new _ShoppingListState();
// }

// class _ShoppingListState extends State<ShoppingList> {
//   Set<Product> _shoppingCart = new Set<Product>();

//   void _handleCartChanged(Product product, bool inCart) {
//     setState(() {

//       if (inCart)
//         _shoppingCart.add(product);
//       else
//         _shoppingCart.remove(product);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Shopping List'),
//       ),
//       body: new ListView(
//         padding: new EdgeInsets.symmetric(vertical: 8.0),
//         children: widget.products.map((Product product) {
//           return new ShoppingListItem(
//             product: product,
//             inCart: _shoppingCart.contains(product),
//             onCartChanged: _handleCartChanged,
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(new MaterialApp(
//     title: 'Shopping App',
//     home: new ShoppingList(
//       products: <Product>[
//         new Product(name: 'Eggs'),
//         new Product(name: 'Flour'),
//         new Product(name: 'Chocolate chips'),
//       ],
//     ),
//   ));
// }
