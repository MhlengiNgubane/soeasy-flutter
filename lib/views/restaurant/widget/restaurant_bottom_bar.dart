import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:soeasy/common/custom_button.dart';
import 'package:soeasy/constants/constants.dart';
import 'package:soeasy/models/restaurants_model.dart';
import 'package:soeasy/views/restaurant/rating_page.dart';

class RestaurantBottomBar extends StatelessWidget {
  const RestaurantBottomBar({
    super.key,
    required this.restaurant,
  });

  final RestaurantsModel? restaurant;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingBarIndicator(
          itemCount: 5,
          itemSize: 25,
          rating: restaurant!.rating.toDouble(),
          itemBuilder: (context, i) => const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
        ),
        CustomButton(
          onTap: () {
            Get.to(() => const RatingPage());
          },
          btnColor: kSecondary,
          btnWidth: width / 3,
          text: "Rate Restaurant",
        ),
      ],
    );
  }
}
