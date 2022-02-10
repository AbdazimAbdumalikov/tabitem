import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabItem {
  String title;
  Icon icon;
  TabItem({required this.title, required this.icon,});
}

final List<TabItem> _tabBar = [
  TabItem(title: 'Home', icon: Icon(Icons.home_filled, color: Colors.black54,),),
  TabItem(title: 'Чат', icon: Icon(Icons.chat, color: Colors.black54,)),
  TabItem(title: 'Альбом', icon: Icon(Icons.album, color: Colors.black54,)),
  TabItem(title: 'Профиль', icon: Icon(Icons.account_circle, color: Colors.black54,)),
];

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarExampleState createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState extends State<BottomNavigationBarExample>
    with TickerProviderStateMixin {
  TabController? _tabController;
  int _currentTabIndex = 0;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabBar.length, vsync: this);


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TalkTime'),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            color: Colors.lightGreen,
            child: Text('1'),
          ),
          Container(
            color: Colors.white54,
            child: Text('2'),
          ),
          Container(
            color: Colors.red,
            child: Text('3'),
          ),
          Container(
            color: Colors.yellow,
            child: Text('4'),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black54,
        onTap: (index) {
          setState(() {
            _tabController?.index = index;
            _currentTabIndex = index;
          }
          );
        },
        currentIndex: _currentTabIndex,
        items: [
          for (final item in _tabBar)
            BottomNavigationBarItem(
              label: item.title,
              icon: item.icon,
            ),
        ],
      ),
    );
  }
}
