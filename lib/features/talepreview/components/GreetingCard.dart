import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';


import '../../../utils/text_style_utils.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Willkommen!',
      style: TextStyleUtils.heading,
    );
  }
}
