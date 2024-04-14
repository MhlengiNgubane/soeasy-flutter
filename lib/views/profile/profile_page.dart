import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:soeasy/common/custom_button.dart';
import 'package:soeasy/views/profile/widget/profile_app_bar.dart';
import 'package:soeasy/views/profile/widget/profile_title_widget.dart';
import 'package:soeasy/views/profile/widget/user_info_widget.dart';

import '../../common/custom_container.dart';
import '../../constants/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: const ProfileAppBar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const UserInfoWidget(),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 200.h,
                decoration: const BoxDecoration(
                  color: kLightWhite,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ProfileTitleWidget(
                      onTap: () {},
                      title: "My Orders",
                      icon: Ionicons.fast_food_outline,
                    ),
                    ProfileTitleWidget(
                      onTap: () {},
                      title: "My Favorite Places",
                      icon: Ionicons.heart_outline,
                    ),
                    ProfileTitleWidget(
                      onTap: () {},
                      title: "Reviews",
                      icon: Ionicons.chatbubble_outline,
                    ),
                    ProfileTitleWidget(
                      onTap: () {},
                      title: "Coupons",
                      icon: MaterialCommunityIcons.tag_outline,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 200.h,
                decoration: const BoxDecoration(
                  color: kLightWhite,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ProfileTitleWidget(
                      onTap: () {},
                      title: "Shipping Address",
                      icon: SimpleLineIcons.location_pin,
                    ),
                    ProfileTitleWidget(
                      onTap: () {},
                      title: "Service Center",
                      icon: AntDesign.customerservice,
                    ),
                    ProfileTitleWidget(
                      onTap: () {},
                      title: "App FeedBack",
                      icon: MaterialIcons.rss_feed,
                    ),
                    ProfileTitleWidget(
                      onTap: () {},
                      title: "Settings",
                      icon: AntDesign.setting,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                onTap: () {},
                btnColor: kRed,
                text: "Logout",
                radius: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
