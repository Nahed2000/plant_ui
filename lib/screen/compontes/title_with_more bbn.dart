import 'package:flutter/material.dart';

import '../../constants.dart';

class RowTitle extends StatelessWidget {
  const RowTitle({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Row(
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),
                ),
              ),
            ]),
            const Spacer(),
            ElevatedButton(
              onPressed: onPressed,
              child: const Text('More'),
              style: ElevatedButton.styleFrom(
                primary: kPrimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
