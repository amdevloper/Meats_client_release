import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Expandablelistvolume1ItemWidget extends StatelessWidget {
  Expandablelistvolume1ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        bottom: 269,
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: EdgeInsets.zero,
          title: Container(
            width: size.width,
            padding: getPadding(
              left: 20,
              top: 13,
              right: 20,
              bottom: 13,
            ),
            decoration: AppDecoration.fillWhiteA700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgVolume,
                  height: getSize(
                    29.00,
                  ),
                  width: getSize(
                    29.00,
                  ),
                  margin: getMargin(
                    bottom: 1,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 11,
                    top: 6,
                    bottom: 4,
                  ),
                  child: Text(
                    "Cryptocurrency",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular16Black900,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          trailing: CustomImageView(
            svgPath: ImageConstant.imgArrowright12x6,
            height: getVerticalSize(
              12.00,
            ),
            width: getHorizontalSize(
              6.00,
            ),
            margin: getMargin(
              top: 9,
              bottom: 9,
            ),
          ),
          children: [
            Container(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                      top: 33,
                    ),
                    child: Text(
                      "Cards",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold18,
                    ),
                  ),
                ],
              ),
            ),
          ],
          onExpansionChanged: (value) {},
        ),
      ),
    );
  }
}
