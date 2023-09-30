import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class MoneyAddedSuccessScreen extends StatelessWidget {
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
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(top: 239),
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    color:
                                                        ColorConstant.teal300,
                                                    width: getHorizontalSize(
                                                        3.00)),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            42.00))),
                                            child: Container(
                                                height: getSize(84.00),
                                                width: getSize(84.00),
                                                padding: getPadding(
                                                    left: 24,
                                                    top: 28,
                                                    right: 24,
                                                    bottom: 28),
                                                decoration: AppDecoration
                                                    .outlineTeal300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .circleBorder42),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckmark,
                                                      height: getVerticalSize(
                                                          24.00),
                                                      width: getHorizontalSize(
                                                          35.00),
                                                      alignment:
                                                          Alignment.topCenter)
                                                ]))),
                                        Padding(
                                            padding: getPadding(top: 40),
                                            child: Text("\$60 Added",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium24)),
                                        Container(
                                            width: getHorizontalSize(252.00),
                                            margin: getMargin(top: 50),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "Updated  M.E.A.T.S Wallet Balance : ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .blueGray300,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                  TextSpan(
                                                      text: "\$60.00",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray90001,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w700))
                                                ]),
                                                textAlign: TextAlign.center)),
                                        CustomButton(
                                            height: 48,
                                            width: 335,
                                            text: "Next",
                                            margin: getMargin(top: 31),
                                            onTap: () => onTapNext(context)),
                                        Container(
                                            width: size.width,
                                            margin: getMargin(top: 180),
                                            padding: getPadding(
                                                left: 163,
                                                top: 8,
                                                right: 163,
                                                bottom: 8),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL16),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgRectangle,
                                                      height:
                                                          getVerticalSize(5.00),
                                                      width: getHorizontalSize(
                                                          48.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2.00)),
                                                      margin:
                                                          getMargin(bottom: 3))
                                                ]))
                                      ]))))
                    ]))));
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterWalletAmountAddedScreen);
  }
}
