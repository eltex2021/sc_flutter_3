import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sc_flutter_3/data/userInfo.dart';
import 'package:sc_flutter_3/screens/widgets/friends.dart';
import 'package:sc_flutter_3/screens/widgets/select_type.dart';
import 'package:sc_flutter_3/style/dividers.dart';
import 'package:sc_flutter_3/style/sizedboxes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 24,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: TextTitle(),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              size: 24,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(children: [
        Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizeBox24(),
              UserFoto(),
              UserInfo(),
              SelectType(),
              SizeBox12(),
              select_type(),
              SizeBox16(),
              Divader1718(),
              SizeBox12(),
              Friends(),
            ],
          ),
        ),
      ] // для listView
          ), // listView
    );
  }
}

class TextTitle extends StatelessWidget {
  const TextTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Profile",
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
      ),
    );
  }
}
