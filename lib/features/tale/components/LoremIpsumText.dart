import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoremIpsumText extends StatefulWidget {
  const LoremIpsumText({super.key});

  @override
  State<StatefulWidget> createState() => LoremIpsumTextState();
}

class LoremIpsumTextState extends State<LoremIpsumText> {
  String? _loremIpsum;

  @override
  void initState() {
    super.initState();
    _loadLoremIpsum().then((value) => _loremIpsum = value);
  }

  @override
  Widget build(BuildContext context) {
    return (_loremIpsum == null)
        ? const CircularProgressIndicator()
        // TODO: Replace font with OpenDyslexic-Regular
        : Text(
            _loremIpsum ?? 'Not Found',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.justify,
        );
  }

  Future<String> _loadLoremIpsum() async {
    return await rootBundle.loadString('assets/lorem-ipsum.txt');
  }
}
