import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../res/colors/app_color.dart';
import '../../../utils/text_style_utils.dart';

class ReadButton extends StatelessWidget {
  const ReadButton({
    Key? key ,
    this.buttonColor = AppColor.primaryButtonColor  ,
    this.textColor = AppColor.primaryTextColor ,
    required this.title ,
    required this.onPress ,

    this.loading = false
  }) : super(key: key);


  final bool loading;
  final String title ;

  final VoidCallback onPress ;
  final Color textColor ;
  final LinearGradient buttonColor;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace with button, directing back to the TextPreviewScreen
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 70.h,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: AppColor.primaryButtonColor,
            borderRadius: BorderRadius.circular(50)
        ),
        child: loading ?
        Center(child: CircularProgressIndicator()) :
        Center(
          child: Text(title , style: TextStyleUtils.buttonText ,),
        ),
      ),
    );
  }
}
