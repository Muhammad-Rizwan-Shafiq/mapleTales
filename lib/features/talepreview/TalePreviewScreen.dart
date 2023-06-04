import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talepreview/features/talepreview/components/TalePreviewCard.dart';
import 'package:talepreview/features/talepreview/models/TalePreview.dart';
import 'package:talepreview/res/colors/app_color.dart';


import '../../res/fonts/app_fonts.dart';
import '../../router/router.dart';
import '../../utils/text_style_utils.dart';
import 'bloc/TalePreviewBloc.dart';
import 'bloc/states/TalePreviewState.dart';
import 'components/GreetingCard.dart';
import 'components/PlaceholderCard.dart';
import 'components/ReadCounter.dart';

@RoutePage(name: 'TalePreviewRoute')
class TalePreviewScreen extends StatefulWidget {
  const TalePreviewScreen({super.key});

  @override
  State<TalePreviewScreen> createState() => _TalePreviewScreenState();
}

class _TalePreviewScreenState extends State<TalePreviewScreen> {
  final TalePreviewBloc talePreviewBloc = TalePreviewBloc();

  @override
  void initState() {
    talePreviewBloc.fetchData();
    _sortTalePreviews();
    super.initState();
  }

  void _sortTalePreviews() {
    talePreviewBloc.talePreviewsList.sort((a, b) {
      if (a.isReads && !b.isReads) {
        return 1; // Move unread tales to the top
      } else if (!a.isReads && b.isReads) {
        return -1; // Keep read tales below unread ones
      } else {
        return 0; // Preserve the existing order if both are read or both are unread
      }
    });
  }

  @override
  void dispose() {
    talePreviewBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GreetingCard(),
            SizedBox(
              height: 20.h,
            ),
            ReadCounter(counter: talePreviewBloc.getTotalReads),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: talePreviewBloc.talePreviewsList.length,
              itemBuilder: (context, index) {
                TalePreview talePreview =
                    talePreviewBloc.talePreviewsList[index];
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: GestureDetector(
                    onTap: () {
                      context.router.navigate(TalePreviewDescriptionRoute(
                          talePreview: talePreview,
                          totalReads: talePreviewBloc.getTotalReads));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // if (talePreview.isReads) Text("read"),
                        TalePreviewCard(
                          assetImageString:
                              'services/talepreview-service${talePreview.icon}',
                          title: '${talePreview.title}',
                          grades:
                              '${talePreview.grades[0]} - ${talePreview.grades[1]} Klasse',
                          subTitle: '${talePreview.subtitle}',
                          author: '${talePreview.author}',
                          read: talePreview.isReads,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
