import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';


class ScaffoldExample extends StatefulWidget {
  const ScaffoldExample({Key? key}) : super(key: key);

  @override
  _ScaffoldExampleState createState() => _ScaffoldExampleState();
}

class _ScaffoldExampleState extends State<ScaffoldExample> {
  int tabIndex = 0;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  PersistentBottomSheetController? _controller;

  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  void toggleBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) {
      return Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ListTile(
              title: Text('Сумма'),
              leading: Icon(Icons.credit_card),
              trailing: Text('42500 KZT'),
              onTap: () {},
            ),
            Container(
              child: ElevatedButton(onPressed: () {},
                child: Text('Оплатить'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightGreen,
                ),
              ),
            )
          ],
        ),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldKey,

      appBar: AppBar(
        title: Text('Ты красавчик!'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.chat))
        ],
      ),

      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                children: [
                  DrawerHeader(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/378800000132463777/9b9e8ff65c23e1cdf3efcf1512431922_400x400.jpeg'),
                      radius: 60,
                      backgroundColor: Colors.red,
                    ),
                  ),
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    title: Text('Profile'),
                    leading: Icon(Icons.person),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                  ListTile(
                    title: Text('Images'),
                    leading: Icon(Icons.image),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: () {},
                        child: Text('Вход')
                    ),
                    ElevatedButton(onPressed: () {},
                        child: Text('Регистрация')
                    )
                  ]
              ),
            )
          ],
        )
      ),
       bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 10,
        notchMargin: 8,
        clipBehavior: Clip.antiAlias,
        child: Container(
          child: BottomNavigationBar(
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              )
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: toggleBottomSheet,
          label: Icon(Icons.add),
      ),

    /* bottomSheet: BottomSheet(
        builder: (context) => Container(
          color: Colors.blueAccent,
          height: 200,
          child: Center(
            child: Text('Bottom'),
          ),
        ),
        onClosing: () {},
      ),*/
    );
  }
}