import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talepreview/features/tale/components/LoremIpsumText.dart';
import 'package:talepreview/features/tale/components/ReadButton.dart';
import 'package:talepreview/router/router.dart';


import '../talepreview/bloc/TalePreviewBloc.dart';
import '../talepreview/models/TalePreview.dart';

@RoutePage(name: 'TalePreviewDescriptionRoute')
class TaleScreen extends StatefulWidget {
  const TaleScreen(
      {super.key, required this.talePreview, required this.totalReads});
  final TalePreview talePreview;
  final int totalReads;

  @override
  State<TaleScreen> createState() => _TaleScreenState();
}

class _TaleScreenState extends State<TaleScreen> {
  @override
  Widget build(BuildContext context) {
    final TalePreviewBloc talePreviewBloc = TalePreviewBloc();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: Column(children: [
            SizedBox(height: 20.h,),
            LoremIpsumText(
              title: "${widget.talePreview.title}",
              subTitle: "${widget.talePreview.subtitle}",
            ),
            Spacer(),
            ReadButton(
              title: 'Gelesen',
              onPress: () {
                if (!widget.talePreview.isReads) {
                  setState(
                    () {
                      widget.talePreview.isReads = true;
                      talePreviewBloc.increaseReads();
                    },
                  );
                }

                context.replaceRoute(const TalePreviewRoute());
              },
            ),
            SizedBox(
              height: 20.h,
            ),
          ]),
        ),
      ),
    );
  }
}
