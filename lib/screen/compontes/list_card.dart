import 'package:flutter/material.dart';

import 'bottom_figure.dart';

class ListCardBottom extends StatelessWidget {
  const ListCardBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BottomImage(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
          BottomImage(
            image: 'assets/images/bottom_img_2.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

