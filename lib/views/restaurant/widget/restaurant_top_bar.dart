import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:soeasy/common/app_style.dart';
import 'package:soeasy/common/reusable_text.dart';
import 'package:soeasy/constants/constants.dart';
import 'package:soeasy/models/restaurants_model.dart';
import 'package:soeasy/views/restaurant/directions_page.dart';

class RestaurantTopBar extends StatelessWidget {
  const RestaurantTopBar({
    super.key,
    required this.restaurant,
  });

  final RestaurantsModel? restaurant;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Icon(Ionicons.chevron_back_circle,
                size: 28, color: kLightWhite),
          ),
          ReusableText(
            text: restaurant!.title,
            style: appStyle(13, kDark, FontWeight.w600),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const DirectionsPage());
            },
            child: const Icon(Ionicons.location, size: 28, color: kLightWhite),
          ),
        ],
      ),
    );
  }
}
