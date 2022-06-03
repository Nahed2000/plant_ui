import 'package:flutter/material.dart';
import 'package:plantapp/detailes/componets/body_details.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: BodyScreen()),
    );
  }
}
