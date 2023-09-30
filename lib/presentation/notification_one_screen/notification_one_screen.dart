import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class NotificationOneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.img104notification,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: size.width,
            padding: getPadding(
              left: 16,
              top: 13,
              right: 16,
              bottom: 13,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgLockWhiteA700,
                  height: getVerticalSize(
                    39.00,
                  ),
                  width: getHorizontalSize(
                    37.00,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    119.00,
                  ),
                  width: getHorizontalSize(
                    162.00,
                  ),
                  margin: getMargin(
                    top: 6,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "9:41",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProDisplayThin80,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "T",
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    21,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "uesda",
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    21,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: getHorizontalSize(
                                    0.02,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: "y",
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    21,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: ",",
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    21,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "  23 June",
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    21,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: getHorizontalSize(
                                    0.02,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    139.00,
                  ),
                  width: getHorizontalSize(
                    343.00,
                  ),
                  margin: getMargin(
                    top: 57,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 1,
                          ),
                          padding: getPadding(
                            left: 15,
                            top: 8,
                            right: 15,
                            bottom: 8,
                          ),
                          decoration: AppDecoration.fillWhiteA700a0.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: getPadding(
                                  right: 2,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "M.E.A.T.S".toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold12,
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClose,
                                      height: getSize(
                                        10.00,
                                      ),
                                      width: getSize(
                                        10.00,
                                      ),
                                      margin: getMargin(
                                        top: 2,
                                        bottom: 2,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: getHorizontalSize(
                                  280.00,
                                ),
                                margin: getMargin(
                                  top: 22,
                                ),
                                child: Text(
                                  "You have received a new order. Please check it and accept that order.",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium16Black90001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 14,
                                  bottom: 4,
                                ),
                                child: Text(
                                  "View",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular16Gray90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(
                            1.00,
                          ),
                          width: getHorizontalSize(
                            343.00,
                          ),
                          margin: getMargin(
                            top: 33,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blueGray300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: getPadding(
                    left: 30,
                    right: 30,
                    bottom: 37,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        height: 50,
                        width: 50,
                        variant: IconButtonVariant.FillBlack90075,
                        padding: IconButtonPadding.PaddingAll14,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgFlashlight,
                        ),
                      ),
                      CustomIconButton(
                        height: 50,
                        width: 50,
                        variant: IconButtonVariant.FillBlack90075,
                        padding: IconButtonPadding.PaddingAll14,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgCameraWhiteA700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
