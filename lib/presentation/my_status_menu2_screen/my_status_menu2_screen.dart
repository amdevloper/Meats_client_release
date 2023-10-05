import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_circleimage.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class MyStatusMenu2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: size.width,
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 18, right: 13),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImageplaceholder50x50,
                                                  height: getSize(50.00),
                                                  width: getSize(50.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(
                                                          10.00))),
                                              CustomButton(
                                                  height: 32,
                                                  width: 168,
                                                  text: "Send Your Order",
                                                  margin: getMargin(
                                                      top: 7, bottom: 11),
                                                  variant: ButtonVariant
                                                      .OutlineGray300_1,
                                                  shape: ButtonShape
                                                      .CircleBorder16,
                                                  padding:
                                                      ButtonPadding.PaddingAll5,
                                                  fontStyle: ButtonFontStyle
                                                      .RobotoMedium16Gray900)
                                            ]))),
                                Padding(
                                    padding: getPadding(left: 18, top: 15),
                                    child: Text("La Pino’s Pizza",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium14)),
                                Padding(
                                    padding: getPadding(left: 18, top: 5),
                                    child: Text("18th Street Brewery",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular12)),
                              ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: getVerticalSize(607.00),
                          width: size.width,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage189,
                                height: getVerticalSize(607.00),
                                width: getHorizontalSize(375.00),
                                alignment: Alignment.center),
                            CustomAppBar(
                                height: getVerticalSize(99.00),
                                centerTitle: true,
                                title: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 20, top: 9, right: 21),
                                          child: Row(children: [
                                            AppbarImage(
                                                height: getVerticalSize(12.00),
                                                width: getHorizontalSize(6.00),
                                                svgPath: ImageConstant
                                                    .imgArrowleftWhiteA700,
                                                margin: getMargin(
                                                    top: 5, bottom: 7),
                                                onTap: () =>
                                                    onTapArrowleft38(context)),
                                            AppbarCircleimage(
                                                imagePath: ImageConstant
                                                    .imgEllipse7125x125,
                                                margin: getMargin(left: 18)),
                                            AppbarTitle(
                                                text: "La Pino’s Pizza",
                                                margin: getMargin(
                                                    left: 9, bottom: 1)),
                                            Container(
                                                height: getVerticalSize(20.00),
                                                width: getHorizontalSize(1.00),
                                                margin: getMargin(
                                                    left: 157,
                                                    top: 3,
                                                    bottom: 1),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                10.00)),
                                                    border: Border.all(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        width:
                                                            getHorizontalSize(
                                                                1.00),
                                                        strokeAlign: BorderSide.strokeAlignCenter)))
                                          ])),
                                      Padding(
                                          padding: getPadding(
                                              left: 18,
                                              top: 13,
                                              right: 20,
                                              bottom: 51),
                                          child: Row(children: [
                                            Container(
                                                height: getVerticalSize(2.00),
                                                width:
                                                    getHorizontalSize(167.00),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1.00)))),
                                            Container(
                                                height: getVerticalSize(2.00),
                                                width:
                                                    getHorizontalSize(167.00),
                                                margin: getMargin(left: 3),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .whiteA7007e,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1.00))))
                                          ]))
                                    ]),
                                styleType: Style.bgGradientGray900ceGray90000)
                          ]))),
                  CustomButton(
                      width: 374,
                      text: "18th Street Brewery",
                      margin: getMargin(bottom: 160),
                      variant: ButtonVariant.GradientGray900ceGray90000,
                      shape: ButtonShape.Square,
                      padding: ButtonPadding.PaddingT15,
                      fontStyle: ButtonFontStyle.RobotoRegular18,
                      prefixWidget: Container(
                          margin: getMargin(right: 8),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgLocationWhiteA700)),
                      alignment: Alignment.bottomCenter)
                ]))));
  }

  onTapArrowleft38(BuildContext context) {
    Navigator.pop(context);
  }
}
