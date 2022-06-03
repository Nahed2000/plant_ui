import 'package:flutter/material.dart';
import 'package:plantapp/screen/compontes/recomnded.dart';

import '../../detailes/detailes_screen.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Recommended(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const DetailsScreen(),
              ));
            },
          ),
          Recommended(
            image: 'assets/images/image_2.png',
            title: 'Angelina',
            country: 'Russia',
            price: 460,
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const DetailsScreen()));
            },
          ),
          Recommended(
            image: 'assets/images/image_3.png',
            title: 'Ashley',
            country: 'Russia',
            price: 450,
            press: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => const DetailsScreen()));
            }
          ),
        ],
      ),
    );
  }
}