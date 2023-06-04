import 'package:flutter/material.dart';

import '../../../utils/text_style_utils.dart';


class LoremIpsumText extends StatelessWidget {
  const LoremIpsumText({Key? key,this.title,this.subTitle}) : super(key: key);

  final String? title,subTitle ;

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text("${title}",style: TextStyleUtils.heading,textAlign: TextAlign.center,),
        SizedBox(height: 20,),
        Text("${subTitle}",style: TextStyleUtils.body,),

      ],
    );
  }
}
