import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
          style: TextStyle(color: Colors.teal, fontFamily: 'Google'),
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
                      'https://lh3.googleusercontent.com/VC6GeWxCvo7GSJGd-MO9Q3v2ep1ohYGRGwH8LT1_WZHG8N87g_heXu9xZYqDK-PaY4-OSdprM9hfc6kaJBvgQzGuM_dOuGN9INZt7whtx0ByVqQM70z6kIQvgYV3KoLeTKJcDedrkdmdwOPG0Eia_23Z_E34QVckgAnUaqFyAmagyi9MBov11-3WDlDYbCosULWO2EXQz8R07l1m36jpN6hxrwkGqFhNu0X3xvyzxY68FKpZJ6KpsBxBKMYbkHzNeke5nVKwpktlKaUnqtz4jPh6Q-6tjD_355w4_fxB5e7lK2QekU-pAoppZ3Q8hG4BTLCh5FAhfDC93_lW2b7RaCNgS9sqszGDZj9v4bY3z1d8bfhfEN-JsAxBcpHJuIajaxu4ywDSMQgPV2cQ8zs-x5JHopGK3-IlzmZspVfvfbA-G2jItkSjdtpN8El6cR_p8ZzXrAvcgpwsgx8Szd3ihFeY0RXCGCSm6skS_0GQo7JEW_LrMGIKIHl75D6TdgJs3q04I4pI3_sXjcLwECcZPXSdmn0ixqRquSIOl2iSiky_zgw-Gk13-8yWlKpRYIAuzLxGLhsCMlL_K2XvupQVWbGDFnWFusYq6ZCe4O4T5JbpJBoo9smkPPDrvJChm6XTcaF3Bjt2dSRuoYOXS5oLb8t3fpmeplTd=s1003-no'),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.linear_scale,
                        size: 32.0,
                        color: Colors.lightGreen,
                      ),
                      Text(
                        ' 234',
                        style: TextStyle(
                            fontFamily: 'Google',
                            fontSize: 20.0,
                            color: Colors.black87),
                      ),
                      Text(
                        ' Km',
                        style: TextStyle(
                            fontFamily: 'Google',
                            fontSize: 18.0,
                            color: Colors.black38),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.timer,
                        size: 32.0,
                        color: Colors.lightGreen,
                      ),
                      Text(
                        ' 450+',
                        style: TextStyle(
                            fontFamily: 'Google',
                            fontSize: 20.0,
                            color: Colors.black87),
                      ),
                      Text(
                        ' h',
                        style: TextStyle(
                            fontFamily: 'Google',
                            fontSize: 18.0,
                            color: Colors.black38),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.crop_square,
                        size: 32.0,
                        color: Colors.lightGreen,
                      ),
                      Text(
                        ' 1,5',
                        style: TextStyle(
                            fontFamily: 'Google',
                            fontSize: 20.0,
                            color: Colors.black87),
                      ),
                      Text(
                        ' t',
                        style: TextStyle(
                            fontFamily: 'Google',
                            fontSize: 18.0,
                            color: Colors.black38),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width - 32,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Activity this month',
                      style: TextStyle(fontSize: 24.0, fontFamily: 'Google')),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('70429',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 64.0,
                              fontFamily: 'Google',
                            )),
                        Text('Kcal',
                            style: TextStyle(
                                fontSize: 28.0,
                                color: Colors.black26,
                                fontFamily: 'Google'))
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Distance',
                                style: TextStyle(
                                    fontSize: 28.0,
                                    color: Colors.black26,
                                    fontFamily: 'Google')),
                            Text('1744 Km',
                                style: TextStyle(
                                    fontSize: 36.0,
                                    color: Colors.black87,
                                    fontFamily: 'Google')),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text('Duration',
                                style: TextStyle(
                                    fontSize: 28.0,
                                    color: Colors.black26,
                                    fontFamily: 'Google')),
                            Text('14+ h',
                                style: TextStyle(
                                    fontSize: 36.0,
                                    color: Colors.black87,
                                    fontFamily: 'Google')),
                          ],
                        )
                      ],
                    ),
                  ),
                  ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: <Widget>[
                      Card(
                        child: Container(
                          width: 64.0,
                          height: 128.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              margin: EdgeInsets.only(top: 32.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0))),
            ),
          ),
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
