import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
              padding: const EdgeInsetsDirectional.only(
                  bottom: 36 + kDefaultPadding,end: kDefaultPadding, start: kDefaultPadding),
              height: size.height * 0.2 - 27,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    'Hi UiShop',
                    style: Theme.of(context)  .textTheme.headline5!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  Image.asset('assets/images/logo.png'),
                ],
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(
                right: kDefaultPadding,
              ),
              margin:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.6),
                          ),
                        )),
                  ),
                  SvgPicture.asset('assets/icons/search.svg'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}