import 'package:flutter/material.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class LatestCategoryItemWidget extends StatelessWidget {
  LatestCategoryItemWidget();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImageplaceholder88x88,
                height: getSize(
                  120.00,
                ),
                width: getSize(
                  120.00,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    16.00,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 12,
                ),
                child: Text(
                  "Sandwich",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium14Bluegray300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
