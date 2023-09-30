import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListcontentishereItemWidget extends StatelessWidget {
  ListcontentishereItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: getSize(
            24.00,
          ),
          width: getSize(
            24.00,
          ),
          margin: getMargin(
            bottom: 18,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                12.00,
              ),
            ),
            border: Border.all(
              color: ColorConstant.blueGray100,
              width: getHorizontalSize(
                1.00,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 13,
            top: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Bank of America",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular16Gray900,
              ),
              Padding(
                padding: getPadding(
                  left: 3,
                  top: 5,
                ),
                child: Text(
                  " A/c XX 1234",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterRegular14,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgDownload2,
          height: getVerticalSize(
            24.00,
          ),
          width: getHorizontalSize(
            47.00,
          ),
          margin: getMargin(
            top: 12,
            bottom: 6,
          ),
        ),
      ],
    );
  }
}
