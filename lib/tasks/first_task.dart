// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

class FirstTask extends StatefulWidget {
  const FirstTask({Key? key}) : super(key: key);

  @override
  _FirstTaskState createState() => _FirstTaskState();
}

class _FirstTaskState extends State<FirstTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Image from assets',
            textAlign: TextAlign.center,
          ),
          SvgPicture.asset('assets/wins.svg'),
          const SizedBox(height: 10),
          const Text(
            'Image from network',
            textAlign: TextAlign.center,
          ),
          SvgPicture.network(
              'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg'),
        ],
      ),
    );
  }
}
