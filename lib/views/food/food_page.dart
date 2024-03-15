import 'package:flutter/material.dart';
import 'package:soeasy/constants/constants.dart';
import 'package:soeasy/models/foods_model.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key, required this.food});

  final FoodsModel food;

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: width,
            height: height,
            color: kPrimary,
          )
        ],
      ),
    );
  }
}
