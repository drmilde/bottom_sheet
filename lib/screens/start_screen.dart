import 'dart:ui';

import 'package:bottom_sheet/screens/background_svg_screen.dart';
import 'package:bottom_sheet/screens/modal_bottom_sheet_screen.dart';
import 'package:bottom_sheet/screens/svg_provider_screen.dart';
import 'package:bottom_sheet/screens/svg_to_flutter_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildPurpleButton(
                context,
                screen: ModalBottomSheetScreen(),
                text: "Modal Bottom Sheet",
              ),
              _buildPurpleButton(
                context,
                screen: BackgroundSvgScreen(),
                text: "SVG",
              ),
              _buildPurpleButton(
                context,
                screen: SVGToFlutterScreen(),
                text: "SVG to Flutter Screen",
              ),
              _buildPurpleButton(
                context,
                screen: SVGProviderScreen(),
                text: "SVG Provider",
              ),
              _buildPurpleButton(
                context,
                screen: ModalBottomSheetScreen(),
                text: "Modal Bottom Sheet",
              ),
              _buildPurpleButton(
                context,
                screen: ModalBottomSheetScreen(),
                text: "Modal Bottom Sheet",
              ),
              _buildPurpleButton(
                context,
                screen: ModalBottomSheetScreen(),
                text: "Modal Bottom Sheet",
              ),
              _buildPurpleButton(
                context,
                screen: ModalBottomSheetScreen(),
                text: "Modal Bottom Sheet",
              ),
              _buildPurpleButton(
                context,
                screen: ModalBottomSheetScreen(),
                text: "Modal Bottom Sheet",
              ),
              _buildPurpleButton(
                context,
                screen: ModalBottomSheetScreen(),
                text: "Modal Bottom Sheet",
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _buildPurpleButton(
    BuildContext context, {
    required Widget screen,
    String text = "push me",
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screen,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 122, 23, 214),
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
