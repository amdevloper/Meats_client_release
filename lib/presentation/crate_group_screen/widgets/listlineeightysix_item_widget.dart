import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListlineeightysixItemWidget extends StatelessWidget {
  ListlineeightysixItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        64.00,
      ),
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: getVerticalSize(
                1.00,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: size.width,
              padding: getPadding(
                left: 20,
                top: 11,
                right: 20,
                bottom: 11,
              ),
              decoration: AppDecoration.fillWhiteA700,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse78,
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
                      left: 4,
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
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              top: 4,
                            ),
                            child: Text(
                              "Hanna Bosh",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14Gray600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    margin: getMargin(
                      top: 8,
                      bottom: 8,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          4.00,
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
