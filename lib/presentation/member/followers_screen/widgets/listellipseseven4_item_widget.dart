import 'package:flutter/material.dart';

import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Listellipseseven4ItemWidget extends StatelessWidget {
  Listellipseseven4ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: getPadding(
        left: 24,
        top: 11,
        right: 24,
        bottom: 11,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse71,
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
          ),
          Padding(
            padding: getPadding(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hanna.BO",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular16Black900,
                ),
                Padding(
                  padding: getPadding(
                    top: 4,
                  ),
                  child: Text(
                    "Hanna Botosh",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular14Gray600,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomButton(
            height: 32,
            width: 79,
            text: "Follow",
            margin: getMargin(
              top: 4,
              bottom: 4,
            ),
          ),
        ],
      ),
    );
  }
}
