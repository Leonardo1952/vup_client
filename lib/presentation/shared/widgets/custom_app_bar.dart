import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup_client/presentation/core/app_colors.dart';
import 'package:vup_client/presentation/core/app_text_styles.dart';
import 'package:vup_client/presentation/views/profile/profile_view.dart';

class CustomAppBar extends PreferredSize {
  final String label;
  final VoidCallback onAddTapped;
  final BuildContext context;

  CustomAppBar({
    Key? key,
    required this.label,
    required this.onAddTapped,
    required this.context,
  }) : super(
          key: key,
          preferredSize: const Size.fromHeight(87),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.purpleMain,
                  AppColors.purplew300,
                ],
              ),
            ),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).viewPadding.top,
              right: 20,
              left: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "VUP",
                        style: AppTextStyles.largeTitleStyle,
                      ),
                      Text(
                        label,
                        style: AppTextStyles.regularLabelStyle,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ProfileView(),
                    ),
                  ),
                  icon: Icon(
                    Icons.person,
                    color: AppColors.white,
                    size: 5.h,
                  ),
                ),
              ],
            ),
          ),
        );
}
