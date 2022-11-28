import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ModalBottomSheetScreen extends StatelessWidget {
  const ModalBottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 0,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://www.hs-fulda.de/fileadmin/_processed_/7/1/csm_Campusfoto_Profil_3c4aa31cd7.jpg")),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                  child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    _createModelSheet(context);
                  },
                  child: Text("modal sheet"),
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }

  void _createModelSheet(BuildContext context) {
    showMaterialModalBottomSheet(
      backgroundColor: Colors.transparent,
      duration: Duration(milliseconds: 500),
      context: context,
      builder: (context) => SingleChildScrollView(
        controller: ModalScrollController.of(context),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildEntry(),
                    _buildEntry(),
                    _buildEntry(),
                    _buildEntry(),
                    _buildEntry(),
                    _buildEntry(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildEntry() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.lime,
        width: double.infinity,
        height: 100,
      ),
    );
  }
}
