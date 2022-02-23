import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Column(
            children: [
              Image.asset(
                'assets/images/jpg/halter.jpg',
                height: 25.h,
                width: 100.w,
                fit: BoxFit.cover,
              ),
              const Divider(color: Colors.transparent),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rosca Biceps alternada',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    const Divider(color: Colors.transparent),
                    Padding(
                      padding: EdgeInsets.only(bottom: 2.h),
                      child: Row(
                        children: const [Text('Frequencia: '), Text('3x12')],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
