import 'package:flutter/material.dart';
import 'package:talepreview/features/tale/components/LoremIpsumText.dart';
import 'package:talepreview/features/tale/components/ReadButton.dart';

class TaleScreen extends StatelessWidget {
  const TaleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
            backgroundColor: Colors.amber,
            body: Padding(
                padding: EdgeInsets.fromLTRB(20, 15, 20, 10),
                child: Column(
                    children: [
                      LoremIpsumText(),
                      SizedBox(height: 30),
                      ReadButton()
                    ]
                )
            )
        )
    );
  }
}
