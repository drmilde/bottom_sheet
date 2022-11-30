import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class SVGProviderScreen extends StatelessWidget {
  const SVGProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 500;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              right: -(size/2),
              top: -(size/2),
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  //color: Colors.green,
                  image: DecorationImage(
                    //repeat: ImageRepeat.repeat,
                    image: Svg(
                      'assets/images/path448.svg',
                      size: Size(size, size),
                    ),
                    colorFilter: ColorFilter.mode(
                      Colors.black12,
                      BlendMode.dstIn,
                    ),
                  ),
                ),

              ),
            ),
            Positioned(
              left: -(size/2),
              bottom: -(size/2),
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  //color: Colors.green,
                  image: DecorationImage(
                    //repeat: ImageRepeat.repeat,
                    image: Svg(
                      'assets/images/path448.svg',
                      size: Size(size, size),
                    ),
                    colorFilter: ColorFilter.mode(
                      Colors.black12,
                      BlendMode.dstIn,
                    ),
                  ),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
