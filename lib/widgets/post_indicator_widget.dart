import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

Widget PostIndicatorWidget({required int currentIndex}) {
  return Container(
    margin: const EdgeInsets.only(right: 24),
    height: 10.h,
    child: ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 10.h,
          width: 10.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(56.r),
            color: currentIndex == index
                ? AppColors.C_5956E9
                : AppColors.C_FFFFFF,
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 4.w,
        );
      },
    ),
  );
}
