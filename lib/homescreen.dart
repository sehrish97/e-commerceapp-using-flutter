import 'package:counterapp1/constants.dart';
import 'package:counterapp1/drawerviews/favscreen.dart';
import 'package:counterapp1/drawerviews/historyscreen.dart';
import 'package:counterapp1/drawerviews/homescreen.dart';
import 'package:counterapp1/drawerviews/profilescreen.dart';
import 'package:counterapp1/drawerviews/settingscree.dart';
import 'package:flutter/material.dart';

class MainHomeView extends StatefulWidget {
  const MainHomeView({super.key});

  @override
  State<MainHomeView> createState() => _MainHomeViewState();
}

class _MainHomeViewState extends State<MainHomeView> {
  Widget mWidget = HomeView();
  String title = "Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: mWidget,
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: UserAccountsDrawerHeader(
                accountName: Text("Sehrish Sehr"),
                accountEmail: Text("Sehr@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Text("S"),
                ),
                currentAccountPictureSize: Size.square(50.0),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: Constants.drawerList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        tileColor: Constants.drawerList[index].color,
                        title: Text(Constants.drawerList[index].title),
                        leading: Constants.drawerList[index].icon,
                        onTap: () {
                          setState(() {
                            Navigator.pop(context);
                            title = Constants.drawerList[index].title;
                            mWidget = Constants.drawerList[index].widget;
                            if (title == "Logout") {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return getLogoutDialog();
                                  });
                            }
                          });
                        },
                      );
                    }))
          ],
        ),
      ),

      //Expanded & Flex
      // Column(
      //   children: [
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 1,
      //       child: Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.yellow,
      //       ),
      //     ),
      //   ],
      // )

      //Stack & Positioned
      // Stack(
      //   children: [
      //     Container(
      //       height: 300,
      //       width: 300,
      //       color: Colors.red,
      //     ),
      //     Positioned(
      //       top: 0,
      //       right: 0,
      //       child: Container(
      //         height: 100,
      //         width: 100,
      //         color: Colors.green,
      //       ),
      //     ),
      //     Positioned(
      //       top: 0,
      //       right: 0,
      //       child: Container(
      //         height: 200,
      //         width: 200,
      //         color: Colors.yellow,
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}

getLogoutDialog() {
  return AlertDialog(
    title: Text("Logout"),
    content: Container(
      height: 100,
      child: Column(
        children: [
          Text("Do you want to logout?"),
          TextField(
            decoration: InputDecoration(hintText: "Feedback!"),
          )
        ],
      ),
    ),
    actions: [
      ElevatedButton(onPressed: () {}, child: Text("Yes")),
      ElevatedButton(onPressed: () {}, child: Text("No"))
    ],
  );
}
