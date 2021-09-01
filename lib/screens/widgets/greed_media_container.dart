import 'package:flutter/material.dart';
import 'package:sc_flutter_3/data/imageForMedia.dart';
import 'package:sc_flutter_3/style/colors.dart';

class GreedMediaContainerImage extends StatelessWidget {
  const GreedMediaContainerImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 0),
      height: MediaQuery.of(context).size.width,
      child: GridView.builder(
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: new BoxDecoration(color: Colors.white),
              height: 96.62,
              width: 96.62,
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Image.asset(imageformedia[index].imageMedia),
                    Positioned(
                      bottom: 65,
                      right: 8,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12,
                        child: CircleAvatar(
                          backgroundColor: red200,
                          radius: 11.25,
                          child: Image(
                            image: AssetImage(
                                "assets/images/icons/close_25px.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
