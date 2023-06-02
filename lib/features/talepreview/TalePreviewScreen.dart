import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import 'components/GreetingCard.dart';
import 'components/PlaceholderCard.dart';
import 'components/ReadCounter.dart';

@RoutePage(name: 'TalePreviewRoute')
class TalePreviewScreen extends StatelessWidget {
  const TalePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.amber,
        body: SafeArea(
            child: Column(
                children: [
                  GreetingCard(),
                  ReadCounter(),
                  PlaceholderCard()
                ]
            )
        )
    );
  }
}
