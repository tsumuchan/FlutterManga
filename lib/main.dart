import 'package:flutter/material.dart' hide Page;
import 'package:flutter_manga/my_rounded_rect_slider_track_shape.dart';
import 'package:flutter_manga/page.dart';
import 'package:photo_view/photo_view.dart';
import 'package:preload_page_view/preload_page_view.dart';

import 'page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Manga',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Manga Viewer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = PreloadPageController(
    initialPage: 0,
  );
  final _pages = List<Page>();
  bool _isFullScreen = false;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    Iterable<int>.generate(20).forEach((index) {
      _pages.add(
        Page.manga(
          url:
              "https://placehold.jp/9fa0b0/ffffff/360x640.png?text=Page ${index + 1}",
        ),
      );
    });

    _pages.add(Page.end());
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
          Container(
            color: Colors.black,
          ),
          PreloadPageView.builder(
            preloadPagesCount: 2,
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            reverse: true,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              final page = _pages[index];
              return page.when(
                manga: (url) {
                  return PhotoView(
                    onTapUp: (context, details, controllerValue) {
                      setState(() {
                        _isFullScreen = !_isFullScreen;
                      });
                    },
                    imageProvider: NetworkImage(url),
                  );
                },
                end: () {
                  return Container(
                    color: Colors.grey,
                    child: Center(
                      child: Text("End Page"),
                    ),
                  );
                },
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
                  Visibility(
                    visible: !(_pages[_currentIndex] is EndPage),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Text(
                        "${_currentIndex + 1}/${_pages.mangaPageLength()}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 60,
                    color: Theme.of(context).primaryColor,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.white,
                          thumbColor: Colors.white,
                          trackHeight: 3.0,
                          trackShape: MyRoundedRectSliderTrackShape()),
                      child: Slider(
                        onChanged: (value) {
                          setState(() {
                            _currentIndex =
                                _pages.lengthForIndex() - value.floor();
                            _controller.jumpToPage(_currentIndex);
                          });
                        },
                        value: (_pages.lengthForIndex() - _currentIndex)
                            .toDouble(),
                        min: 0,
                        max: _pages.lengthForIndex().toDouble(),
                      ),
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
