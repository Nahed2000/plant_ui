import 'package:flutter/material.dart';

import '../../constants.dart';

class Recommended extends StatefulWidget {
  Recommended({
    Key? key,
    required this.press,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String image, title, country;
   void Function() press;
  final int price;

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: widget.press,
      child: Container(
        width: size.width * 0.4,
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5,
        ),
        child: Column(children: [
          Image.asset(widget.image),
          Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
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
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "${widget.title}\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: widget.country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$${widget.price}',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kPrimaryColor,
                        ),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
