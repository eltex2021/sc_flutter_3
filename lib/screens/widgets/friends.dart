import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sc_flutter_3/data/singleFriend.dart';
import 'package:sc_flutter_3/screens/widgets/greed_media_container.dart';
import 'package:sc_flutter_3/style/colors.dart';
import 'package:sc_flutter_3/style/dividers.dart';
import 'package:sc_flutter_3/style/sizedboxes.dart';

import 'friendsList.dart';

class Friends extends StatelessWidget {
  const Friends({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizeBox16(),
        TextFriends(),
        FriendsList(),
        ButtonAddFriend(),
        RowMyMedia(),
        GreedMediaContainerImage(),
        SizeBox16(),
        ButtonsDeleteAdd(),
        SizeBox16(),
        Divider144(),
      ],
    );
  }
}

class RowMyMedia extends StatelessWidget {
  const RowMyMedia({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
        Text(
          "My media",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            letterSpacing: 0.18,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}

class TextFriends extends StatelessWidget {
  const TextFriends({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 16,
        ),
        Text(
          "Friends",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            letterSpacing: 0.44,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
      ],
    );
  }
}

class ButtonAddFriend extends StatelessWidget {
  const ButtonAddFriend({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 328,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          OutlinedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 0)),
              alignment: Alignment.center,
              foregroundColor: MaterialStateProperty.all(black087),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "ADD FREND",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    letterSpacing: 1.25,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(
                  width: 13,
                ),
                ImageIcon(AssetImage(
                  "assets/images/icons/add_24px.png",
                )),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Divider(
            indent: 0,
            endIndent: 0,
            height: 20,
            color: grey008,
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}

class ButtonsDeleteAdd extends StatelessWidget {
  const ButtonsDeleteAdd({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: 328,
      width: double.infinity,
      //padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.only(left: 16, right: 8),
            child: OutlinedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 0)),
                alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all(violet500),
              ),
              onPressed: () {},
              child: Text(
                "DELETE",
                style: TextStyle(
                  color: white1,
                  fontSize: 14,
                  letterSpacing: 1.25,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),

          //    SizedBox(width: 16,),

          Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.only(left: 8, right: 16),
            child: OutlinedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 0)),
                alignment: Alignment.center,
                foregroundColor: MaterialStateProperty.all(black087),
              ),
              onPressed: () {},
              child: Text(
                "ADD",
                style: TextStyle(
                  color: violet500,
                  fontSize: 14,
                  letterSpacing: 1.25,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
