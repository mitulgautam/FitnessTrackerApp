import 'package:flutter/material.dart';

void main() => runApp(MyApp());
final _name = 'Mitul';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    PageOne(),
    PageTwo(),
    PageThree(),
    PageFour(),
    PageFive()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trackr',
          style: TextStyle(color: Colors.black54),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28.0,
        elevation: 0.0,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.black26,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.view_list), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.filter_tilt_shift), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.euro_symbol), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Container())
        ],
      ),
      body: _children[_currentIndex],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Page 1'),
    );
  }
}

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Page 2'),
    );
  }
}

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hello $_name',
                      style: TextStyle(
                          fontFamily: 'Google',
                          fontSize: 20.0,
                          color: Colors.lime),
                    ),
                    Text(
                      'Member since May 2019',
                      style: TextStyle(
                          fontFamily: 'Google',
                          fontSize: 20.0,
                          color: Colors.green),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 32.0,
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/pV0mhrGpuOHpnR6qesn9-NW1ejb_NK04loHb9EkRWrFGTWORxtGawjDUw1VEvtNXuARXAuqWemksLiGQARKOMJbS8EQt5O1XFF-QL6VM1RwFxXXXq4diiPMyISCmiR-6KoHWBdXFLWPWt1cN8uWOfBc2gsKk8lVYYMszB8EFwBfr6w9YMmvyaRsWT_E256BGBKQ5iSMa5jY5ynLpxYfE7dtbpGLBPoRStZZT0zVlr40WkiOSy2uu6ppR05jjB1Aue3SWmSi43s2LFD1G1YsX2HhaY6VgS-oDCZb5xY3jU9f3xVepGcIjdqvOqh4rDk4Cz5fjSYobu_d621Z5r90CJ0CIg2z8apM9HufhiQLygrYU8CKJ5GimFrsaGweeI8x0Nma1Dn-pV7b_j_fPok4KmIatZUlgGNufKM0yUjIXC1aQy0YkeZ9Kh7TsG4VDz40MeXt93o8YS3nWXMPmsO3fqxN0uAzgIkeg7wVHaTx-FQzEWUJI0ZsU7APXwTdveoZkW9ue_nHclAvvKRQIHsMZivOIPeyJnU9sqnCBHfbjilOsYe_9q06omwjYC5NEmFGk3wtfUJtedKzZROjQmXQtXgYoxXT4BdhC4rvyeLwfrhfrKtW0FokFfJBOf7qIZdXkuiCTsf8V-fPo1PvXD53rUynm_iIS-lsh=s881-no'),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[],
          )
        ],
      ),
    );
  }
}

class PageFour extends StatefulWidget {
  @override
  _PageFourState createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Page 4'),
    );
  }
}

class PageFive extends StatefulWidget {
  @override
  _PageFiveState createState() => _PageFiveState();
}

class _PageFiveState extends State<PageFive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Page 5'),
    );
  }
}
