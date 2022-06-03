import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plantapp/screen/compontes/body.dart';

import '../constants.dart';
import 'compontes/nvb.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0C9869),
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/menu.svg'),
          onPressed: () {},
        ),
      ),
      body: const Body(),
      bottomNavigationBar: NVBar(),
    );
  }
}

