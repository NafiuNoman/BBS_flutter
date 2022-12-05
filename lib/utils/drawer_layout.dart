import 'package:bbs_app/widgets/my_circular_avatar.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[

          UserAccountsDrawerHeader(
            accountName: Text('Aminul Islam'),
            accountEmail: Text('aminulIslam@gmail.com'),
            currentAccountPicture: MyCircleAvatar(radius: 20, imagePath: 'assets/images/userImage.png'),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
