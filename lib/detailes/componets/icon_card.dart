import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    required this.icon ,
    Key? key,
  }) : super(key: key);

  final String icon ;
  @override
  Widget build(BuildContext context) {
 Size size = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 62,
      margin:  EdgeInsets.symmetric(horizontal: size .height * 0.03),
      padding: const EdgeInsets.all(kDefaultPadding /2 ),
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: kBackgroundColor,
        boxShadow: [
          const BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
          BoxShadow(
            offset: const Offset(0, 15),
            blurRadius: 22,
            color: kPrimaryColor.withOpacity(0.23),
          ),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
