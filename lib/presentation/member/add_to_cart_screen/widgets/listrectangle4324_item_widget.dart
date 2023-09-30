import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Listrectangle4324ItemWidget extends StatelessWidget {
  Listrectangle4324ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImageplaceholder4,
          height: getSize(
            50.00,
          ),
          width: getSize(
            50.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          margin: getMargin(
            bottom: 52,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 10,
            top: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  15.00,
                ),
                padding: getPadding(
                  all: 4,
                ),
                decoration: AppDecoration.outlineTeal3001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder2,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getSize(
                        7.00,
                      ),
                      width: getSize(
                        7.00,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.teal300,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            3.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  "Cheesy-7 Pizza",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium14Gray900,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  169.00,
                ),
                margin: getMargin(
                  top: 3,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "An Exotic Combination of White Mozzarella, Cream, ",
                        style: TextStyle(
                          color: ColorConstant.blueGray300,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Read More",
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Row(
                  children: [
                    Text(
                      "\$6.00",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 6,
                        bottom: 1,
                      ),
                      child: Text(
                        "\$8.66",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium12Bluegray300.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 28,
            top: 4,
            bottom: 56,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgMenu,
                    height: getSize(
                      19.00,
                    ),
                    width: getSize(
                      19.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        9.00,
                      ),
                    ),
                    margin: getMargin(
                      top: 1,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 12,
                      bottom: 1,
                    ),
                    child: Text(
                      "1",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium16Gray900,
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgPlus,
                    height: getSize(
                      19.00,
                    ),
                    width: getSize(
                      19.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        9.00,
                      ),
                    ),
                    margin: getMargin(
                      left: 14,
                      top: 1,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 11,
                ),
                child: Text(
                  "Customization",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRegular8,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
