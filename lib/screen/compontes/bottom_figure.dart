import 'package:flutter/material.dart';

import '../../constants.dart';

class BottomImage extends StatelessWidget {
  const BottomImage({
    required this.image,
    required this.press,
    Key? key,
  }) : super(key: key);

  final String image;

  final void Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: press,
      child: Container(
        width: size.width * 0.8,
        height: 185,
        margin: const EdgeInsetsDirectional.only(
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
          start: kDefaultPadding,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}