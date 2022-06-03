import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import 'icon_card.dart';
import 'image_and_icon.dart';

class BodyScreen extends StatelessWidget {
  const BodyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(size: size),
          Padding(

            padding: const EdgeInsetsDirectional.only(
              start: kDefaultPadding,
              end: kDefaultPadding,
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: 'Angelica\n ',
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    color: kTextColor,
                                  )),
                      const TextSpan(
                        text: 'Russia ',
                        style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  '\$500',
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: kPrimaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Description ',style: TextStyle(
                    color: Colors.grey
                  ),),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
