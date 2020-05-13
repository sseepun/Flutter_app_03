import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../screens/favorite.dart';
import '../screens/home.dart';
import '../screens/profile.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentScreenIndex = 1;
  List<Widget> _screens;
  List<IconData> _bottomIconData = <IconData>[
    FontAwesomeIcons.heart,
    FontAwesomeIcons.home,
    FontAwesomeIcons.user,
  ];

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.bottom,
    ]);

    _screens = [
      FavoriteScreen(),
      HomeScreen(),
      ProfileScreen(),
    ];

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context, width: 1440, height: 2560, 
      allowFontScaling: true
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentScreenIndex,
        onTap: (int value) {
          setState(() {
            _currentScreenIndex = value;
          });
          print(_currentScreenIndex);
        },
        items: _bottomIconData.map((iconData) {
          var temp = _bottomIconData.indexOf(iconData);
          return BottomNavigationBarItem(
            icon: Icon(
              iconData,
              size: 25,
            ),
            title: Column(
              children: <Widget>[
                SizedBox(height: 8,),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: temp == _currentScreenIndex ? Colors.black : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
