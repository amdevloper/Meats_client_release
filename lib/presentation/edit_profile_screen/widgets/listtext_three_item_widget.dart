import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class ListtextThreeItemWidget extends StatelessWidget {
  ListtextThreeItemWidget();

  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        height: getVerticalSize(
          24.00,
        ),
        width: getHorizontalSize(
          291.00,
        ),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CustomCheckbox(
                alignment: Alignment.centerLeft,
                text: "Chinese",
                iconSize: 24,
                value: checkbox,
                onChange: (value) {
                  checkbox = value;
                },
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CustomCheckbox(
                alignment: Alignment.centerRight,
                text: "Thai Food",
                iconSize: 24,
                value: checkbox1,
                onChange: (value) {
                  checkbox1 = value;
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomCheckbox(
                alignment: Alignment.centerLeft,
                text: "Chinese",
                iconSize: 24,
                value: checkbox2,
                padding: getPadding(
                  left: 33,
                ),
                onChange: (value) {
                  checkbox2 = value;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
