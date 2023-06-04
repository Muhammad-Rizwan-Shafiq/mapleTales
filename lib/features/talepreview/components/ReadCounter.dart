import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talepreview/res/colors/app_color.dart';

import '../../../utils/text_style_utils.dart';
import '../bloc/TalePreviewBloc.dart';

class ReadCounter extends StatefulWidget {
  const ReadCounter({super.key, required this.counter});
  final int counter;
  @override
  State<StatefulWidget> createState() => ReadCounterState();
}

class ReadCounterState extends State<ReadCounter> {

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
        'Sie haben ${widget.counter} Bücher gelesen!',
        style: TextStyleUtils.body,
      ),
    );
  }
}
