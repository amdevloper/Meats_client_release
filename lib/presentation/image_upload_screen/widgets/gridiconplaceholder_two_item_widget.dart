import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class GridiconplaceholderTwoItemWidget extends StatelessWidget {
  GridiconplaceholderTwoItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        126.00,
      ),
      width: getHorizontalSize(
        125.00,
      ),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImageplaceholder126x125,
            height: getVerticalSize(
              126.00,
            ),
            width: getHorizontalSize(
              125.00,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              margin: getMargin(
                top: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    12.00,
                  ),
                ),
                border: Border.all(
                  color: ColorConstant.gray300,
                  width: getHorizontalSize(
                    1.00,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
