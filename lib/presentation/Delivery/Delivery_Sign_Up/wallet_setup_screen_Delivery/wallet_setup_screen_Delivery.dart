import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../wallet_setup_screen_Delivery/widgets/expandablelistvolume_item_widget.dart';
import 'package:flutter/material.dart';

class WalletSetupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomButton(
                          height: 32,
                          width: 55,
                          text: "Skip",
                          margin: getMargin(
                            top: 8,
                            right: 20,
                          ),
                          variant: ButtonVariant.OutlineGray300,
                          shape: ButtonShape.CircleBorder16,
                          padding: ButtonPadding.PaddingAll5,
                          fontStyle: ButtonFontStyle.SofiaPro14,
                          alignment: Alignment.centerRight,
                        ),
                        Container(
                          width: getHorizontalSize(
                            215.00,
                          ),
                          margin: getMargin(
                            top: 24,
                          ),
                          child: Text(
                            "Payment and Wallet \nSetup",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtRobotoBold24Gray900,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 27,
                          ),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return ExpandablelistvolumeItemWidget();
                            },
                          ),
                        ),
                        CustomButton(
                          height: 48,
                          width: 335,
                          text: "Save and Next",
                          margin: getMargin(
                            top: 136,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            28.00,
                          ),
                          width: size.width,
                          margin: getMargin(
                            top: 20,
                          ),
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: size.width,
                                  padding: getPadding(
                                    left: 163,
                                    top: 8,
                                    right: 163,
                                    bottom: 8,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgRectangle,
                                        height: getVerticalSize(
                                          5.00,
                                        ),
                                        width: getHorizontalSize(
                                          48.00,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            2.00,
                                          ),
                                        ),
                                        margin: getMargin(
                                          bottom: 3,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: size.width,
                                  padding: getPadding(
                                    left: 163,
                                    top: 8,
                                    right: 163,
                                    bottom: 8,
                                  ),
                                  decoration:
                                      AppDecoration.fillWhiteA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL16,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgRectangle,
                                        height: getVerticalSize(
                                          5.00,
                                        ),
                                        width: getHorizontalSize(
                                          48.00,
                                        ),
                                        radius: BorderRadius.circular(
                                          getHorizontalSize(
                                            2.00,
                                          ),
                                        ),
                                        margin: getMargin(
                                          bottom: 3,
                                        ),
                                      ),
                                    ],
                                  ),
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
            ],
          ),
        ),
      ),
    );
  }
}
