import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talepreview/res/colors/app_color.dart';

import '../../../utils/text_style_utils.dart';

class ReadCounter extends StatefulWidget {
  const ReadCounter({super.key});

  @override
  State<StatefulWidget> createState() => ReadCounterState();
}

class ReadCounterState extends State<ReadCounter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0.r),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.redColor,
          width: 3.0,
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Text(
        'You have read $counter Books!',
        style: TextStyleUtils.body,
      ),
    );
  }
}
