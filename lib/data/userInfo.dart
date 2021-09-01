import 'package:flutter/material.dart';


class UserInfo extends StatelessWidget {
  const UserInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Tiana Rosser",
            style: TextStyle(
              letterSpacing: 0.15,
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        SizedBox(
          height: 0,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            "Developer",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Divider(
          indent: 17,
          endIndent: 18,
          height: 20,
          color: Color.fromRGBO(33, 33, 33, 0.08),
          thickness: 1,
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

class UserFoto extends StatelessWidget {
  const UserFoto({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(color: Colors.white),
      height: 118,
      width: 118,
      child: Stack(
        children: <Widget>[
          Image.asset("assets/images/Image.png"),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image(
              image: AssetImage("assets/images/Add.png"),
              //width: 36,
              //height: 36,
            ),
          ),
        ],
      ),
    );
  }
}
