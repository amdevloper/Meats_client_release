import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';

// ignore: must_be_immutable
class ListtextOneItemWidget extends StatelessWidget {
  ListtextOneItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 7,
        right: 16,
        bottom: 7,
      ),
      decoration: AppDecoration.outlineGray300.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              top: 8,
              bottom: 7,
            ),
            child: Text(
              "Item Original Price",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular16,
            ),
          ),
          Spacer(),
          Container(
            height: getVerticalSize(
              35.00,
            ),
            width: getHorizontalSize(
              1.00,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray300,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 13,
              top: 7,
              bottom: 9,
            ),
            child: Text(
              "\$",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoRegular16Gray900,
            ),
          ),
        ],
      ),
    );
  }
}
