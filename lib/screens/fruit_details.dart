import 'package:flutter/material.dart';
import 'package:fruit_shebin/consts.dart';
import 'package:fruit_shebin/widgets/fruit_datails_body.dart';

class FruitDetailsView extends StatelessWidget {
  const FruitDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimarycolor,
      body: FruitDetailsBody(),
    );
  }
}