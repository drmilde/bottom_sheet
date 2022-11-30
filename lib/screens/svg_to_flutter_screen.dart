import 'package:bottom_sheet/widgets/my_painter.dart';
import 'package:flutter/material.dart';

class SVGToFlutterScreen extends StatelessWidget {
  const SVGToFlutterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          /*
          Align(
              alignment: Alignment.topLeft,
              child: CustomPaint(
                  painter: HeaderPainter(),
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width, height: 300))),
                      
           */
          Container(
            width: double.infinity,
            height: 1000,
            color: Colors.red,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              child: CustomPaint(
                  painter: MyPainter(),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height,
                    height: 1000,
                  ))),
        ],
      ),
    );
  }
}
