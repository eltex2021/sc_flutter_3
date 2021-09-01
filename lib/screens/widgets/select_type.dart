import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sc_flutter_3/data/styleForSelectType.dart';
import 'package:sc_flutter_3/style/colors.dart';

Row SelectType() {
  return Row(
    children: [
      SizedBox(
        width: 16,
      ),
      Text(
        "Select type",
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

class select_type extends StatelessWidget {
  const select_type({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      //padding: EdgeInsets.symmetric(vertical: 25),
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 16,
          ),
          SizedBox(
            width: 414,
            height: 32,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: styleForselectType.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Row(
                      children: [
                        ChoiceChip(
                          // вставка из правильного варианта
                          shape: styleForselectType.first ==
                                  styleForselectType[index]
                              ? StadiumBorder(
                                  side: BorderSide(
                                  width: 1,
                                  color: Colors.red,
                                ))
                              : null,
                          // вставка из правильного варианта доделать!!!!!!
                          selected: styleForselectType[index].selected,
                          selectedColor: backgrchip,
                          onSelected: (bool _selected) {
                            () {};
                          },
                          labelPadding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                          backgroundColor: Colors.grey[200],
                          label: Text(
                            styleForselectType[index].typeName,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              letterSpacing: 0.25,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
