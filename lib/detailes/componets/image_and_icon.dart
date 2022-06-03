import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import 'icon_card.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(icon : 'assets/icons/sun.svg'),
                    const Spacer(),
                    const IconCard(icon : 'assets/icons/icon_2.svg'),
                    const Spacer(),
                    const IconCard(icon : 'assets/icons/icon_3.svg'),
                    const Spacer(),
                    const IconCard(icon : 'assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                image: const DecorationImage(
                  image: AssetImage('assets/images/img.png'),
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                ),
                boxShadow: [
                  BoxShadow(
                    color: kPrimaryColor.withOpacity(0.29),
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
