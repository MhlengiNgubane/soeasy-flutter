// ignore_for_file: prefer_final_fields

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soeasy/common/app_style.dart';
import 'package:soeasy/constants/constants.dart';
import 'package:soeasy/models/restaurants_model.dart';
import 'package:soeasy/views/restaurant/widget/explore_widget.dart';
import 'package:soeasy/views/restaurant/widget/restaurant_menu.dart';

import 'widget/restaurant_bottom_bar.dart';
import 'widget/restaurant_top_bar.dart';
import 'widget/row_text.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key, required this.restaurant});

  final RestaurantsModel? restaurant;

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage>
    with TickerProviderStateMixin {
  late TabController _tabController = TabController(
    length: 2,
    vsync: this,
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: kLightWhite,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 230.h,
                  width: width,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: widget.restaurant!.imageUrl,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    height: 40.h,
                    width: width,
                    decoration: BoxDecoration(
                      color: kPrimary.withOpacity(0.4),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8.r),
                        topLeft: Radius.circular(8.r),
                      ),
                    ),
                    child: RestaurantBottomBar(restaurant: widget.restaurant),
                  ),
                ),
                Positioned(
                  top: 40.h,
                  left: 0,
                  right: 0,
                  child: RestaurantTopBar(restaurant: widget.restaurant),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                children: [
                  const RowText(
                      first: "Distance to Restaurant", second: "3.4 km"),
                  SizedBox(
                    height: 3.h,
                  ),
                  const RowText(first: "Estimated Price", second: "R 10"),
                  SizedBox(
                    height: 3.h,
                  ),
                  const RowText(
                      first: "Estimated Delivery Time", second: "30 min"),
                  const Divider(
                    thickness: 0.7,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                height: 25.h,
                width: width,
                decoration: BoxDecoration(
                  color: kOffWhite,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: kPrimary,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  labelPadding: EdgeInsets.zero,
                  labelColor: kLightWhite,
                  labelStyle: appStyle(12, kLightWhite, FontWeight.normal),
                  unselectedLabelColor: kGray,
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: width / 2,
                        height: 25,
                        child: const Center(
                          child: Text("Menu"),
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: width / 2,
                        height: 25,
                        child: const Center(
                          child: Text("Explore"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: SizedBox(
                height: height,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    RestaurantMenu(restaurantId: widget.restaurant!.id),
                    ExploreWidget(code: widget.restaurant!.code),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
