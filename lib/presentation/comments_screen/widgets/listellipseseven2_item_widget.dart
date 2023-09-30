import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Listellipseseven2ItemWidget extends StatelessWidget {
  Listellipseseven2ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse72,
          height: getSize(
            40.00,
          ),
          width: getSize(
            40.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
          margin: getMargin(
            bottom: 34,
          ),
        ),
        Padding(
          padding: getPadding(
            top: 1,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Leo Baptists",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16Black900,
                  ),
                  Padding(
                    padding: getPadding(
                      left: 177,
                      bottom: 3,
                    ),
                    child: Text(
                      "2 h",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoRegular12Gray600,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 2,
                ),
                child: Text(
                  "Nice 👏👏👏👏 ",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular14Gray600,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 19,
                ),
                child: Text(
                  "Reply",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
