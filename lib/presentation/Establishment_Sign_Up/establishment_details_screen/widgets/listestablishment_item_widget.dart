import 'package:flutter/material.dart';

import '../../../../core/utils/size_utils.dart';
import '../../../../widgets/custom_checkbox.dart';

// ignore: must_be_immutable


class ListestablishmentItemWidget extends StatefulWidget {
  const ListestablishmentItemWidget({Key? key}) : super(key: key);

  @override
  State<ListestablishmentItemWidget> createState() => _ListestablishmentItemWidgetState();
}

class _ListestablishmentItemWidgetState extends State<ListestablishmentItemWidget> {

  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        24.00,
      ),
      width: getHorizontalSize(
        332.00,
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomCheckbox(
              alignment: Alignment.centerLeft,
              text: "Other",
              iconSize: 24,
              value: checkbox,
              onChange: (value) {
                setState(() {
                  checkbox = value;
                });
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: CustomCheckbox(
              alignment: Alignment.centerRight,
              text: "Restaurant/ Bar",
              // iconSize: 24,
              value: checkbox1,
              onChange: (value) {
                setState(() {
                  checkbox1 = value;
                });
                },
            ),
          ),
          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: CustomCheckbox(
          //     alignment: Alignment.centerLeft,
          //     text: "Other",
          //     iconSize: 24,
          //     value: checkbox2,
          //     padding: getPadding(
          //       left: 33,
          //     ),
          //     onChange: (value) {
          //       setState(() {
          //         checkbox2 = value;
          //       });
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
