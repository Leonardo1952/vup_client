import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vup_client/presentation/core/app_colors.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onTapped;

  const AppButton({
    Key? key,
    required this.label,
    required this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(6)),
      height: 45,
      width: 95.w,
      child: TextButton(
        onPressed: onTapped,
        child: Text(
          label,
          style: const TextStyle(
            color: AppColors.purpleMain,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
