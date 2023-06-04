import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talepreview/features/talepreview/bloc/TalePreviewBloc.dart';

import '../../../res/colors/app_color.dart';
import '../../../res/fonts/app_fonts.dart';
import '../../../utils/text_style_utils.dart';

class TalePreviewCard extends StatelessWidget {
  TalePreviewCard(
      {Key? key,
      this.assetImageString,
      this.title,
      this.grades,
      this.subTitle,
      this.author,required this.read})
      : super(key: key);

  String? assetImageString, title, grades, subTitle, author;
  final bool read;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0.r),
      ),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Fixed image on the left
            Expanded(
              flex: 1,
              child: AspectRatio(
                aspectRatio: 0.8,
                child: Container(
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          assetImageString ?? "No icon",
                          fit: BoxFit.cover,
                          height: 200.h,

                        ),
                      ),
                    read == true ? Icon(
                      Icons.check_rounded,
                      color: AppColor.whiteColor,
                      size: 30.sp,

                    ): Container()
                    ],
                  ),
                ),
              ),
            ),
            // Text on the right
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(left: 10.w, right: 5.2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            title ?? "No Title",
                            style: TextStyleUtils.cardHeading,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.red,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              grades ?? "No Grades",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: AppFonts.openDyslexicRegular,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      subTitle ?? "No SubTitle",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: AppFonts.openDyslexicRegular,
                          color: AppColor.secondaryTextColor),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Von: ',
                          style: TextStyleUtils.cardHeading,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          author ?? "No Author",
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: AppFonts.openDyslexicRegular,
                              color: AppColor.redColor),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
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
