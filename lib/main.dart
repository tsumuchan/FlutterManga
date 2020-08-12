import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  final _pageSize = 10;
  final _pageIndexSize = 9;
  bool _isFullScreen = false;
  int _currentIndex = 0;

  void _toggleScreen() {
    setState(() {
      _isFullScreen = !_isFullScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _isFullScreen
          ? null
          : AppBar(
              title: Text(widget.title),
            ),
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) {
              print("onPageChanged: $index");
              setState(() {
                _currentIndex = index;
              });
            },
            reverse: true,
            itemCount: _pageSize,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.black,
                child: PhotoView(
                  onTapUp: (context, details, controllerValue) {
                    _toggleScreen();
                  },
                  imageProvider: NetworkImage(
                      "https://placehold.jp/9fa0bd/ffffff/360x640.png?text=${_currentIndex + 1}ページ目"),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Visibility(
              visible: !_isFullScreen,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                    child: Text(
                      "${_currentIndex + 1}/$_pageSize",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 60,
                    color: Theme.of(context).primaryColor,
                    child: Slider(
                      onChanged: (value) {
                        print("onChanged: ${value.floor()}");
                        setState(() {
                          _currentIndex = _pageIndexSize - value.floor();
                          _controller.jumpToPage(_currentIndex);
                        });
                      },
                      inactiveColor: Colors.white,
                      activeColor: Colors.white,
                      value: (_pageIndexSize - _currentIndex).toDouble(),
                      min: 0,
                      max: _pageIndexSize.toDouble(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
