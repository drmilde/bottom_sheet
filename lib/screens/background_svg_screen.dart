import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackgroundSvgScreen extends StatelessWidget {
  const BackgroundSvgScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SvgPicture.asset("assets/images/path448.svg"),
      ),
    );
  }
}
