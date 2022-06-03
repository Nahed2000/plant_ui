import 'package:flutter/material.dart';
import 'package:plantapp/constants.dart';
import 'package:plantapp/screen/compontes/recomended_list.dart';

import 'package:plantapp/screen/compontes/title_with_more%20bbn.dart';

import 'header.dart';
import 'list_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: [
        Header(size: size),
        RowTitle(
          title: 'Recommended',
          onPressed: () {},
        ),
        const RecommendedList(),
        RowTitle(
          title: 'Future Plants',
          onPressed: () {},
        ),
        const ListCardBottom(),
        const SizedBox(height: kDefaultPadding),
      ],
    ),
    );
  }
}


