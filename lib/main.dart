// import 'package:app/Silder.dart';
import 'package:app/Silder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Ecom App UI',
            style: TextStyle(
              color: Colors.black,
            ),
          )),
          backgroundColor: Colors.white,
          elevation: 3,
          shadowColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.add_alert_rounded),
              onPressed: () => {},
            )
          ],
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Container(
          child: home(),
        ),
        //  home(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
          backgroundColor: Colors.purple,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        MaterialButton(
                          padding: EdgeInsets.only(right: 80, left: 20),
                          minWidth: 40,
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.purple,
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          //  padding: EdgeInsets.only(right: 80, left: 20),
                          minWidth: 40,
                          onPressed: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 130),
                      child: Row(
                        children: [
                          MaterialButton(
                            padding: EdgeInsets.only(right: 80, left: 20),
                            minWidth: 40,
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_shopping_cart_rounded,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          MaterialButton(
                            //  padding: EdgeInsets.only(right: 80, left: 20),
                            minWidth: 40,
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
