import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';

// ignore: must_be_immutable
class ListlineeightyfiveItemWidget extends StatelessWidget {
  ListlineeightyfiveItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      decoration: AppDecoration.fillGray20087,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: ColorConstant.gray300,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 20,
              top: 22,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: getPadding(
                    top: 1,
                  ),
                  child: Text(
                    "Received a new order",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoBold16,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    bottom: 3,
                  ),
                  child: Text(
                    "8:00 PM",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: getHorizontalSize(
              330.00,
            ),
            margin: getMargin(
              top: 7,
              bottom: 17,
            ),
            child: Text(
              "You have received a new order. Please check it\nand accept that order.",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular16,
            ),
          ),
        ],
      ),
    );
  }
}
