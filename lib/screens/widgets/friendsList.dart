import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sc_flutter_3/data/singleFriend.dart';
import 'package:sc_flutter_3/style/colors.dart';

class FriendsList extends StatelessWidget {
  const FriendsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 360,
          child: ListView.separated(
              physics: ScrollPhysics(),
              //padding: const EdgeInsets.all(8),
              itemCount: singleFriend.length,
              separatorBuilder: (BuildContext context, int index) => Divider(
                    indent: 72,
                    endIndent: 0,
                    height: 20,
                    color: grey008,
                    thickness: 1,
                  ),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  enabled: true,
                  onTap: () {},
                  tileColor: Colors.white,
                  title: Text(
                    singleFriend[index].name,
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 0.15,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(singleFriend[index].img),
                  ),
                  trailing: ImageIcon(
                    AssetImage(
                      "assets/images/icons/close_24px.png",
                    ),
                    color: red200,
                  ),
                  subtitle: Text(
                    singleFriend[index].position,
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 0.25,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                );
              }),
        ),
        SizedBox(
          height: 38,
        ),
      ],
    );
  }
}
