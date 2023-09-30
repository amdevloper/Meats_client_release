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
import '../../widgets/custom_image_view.dart';

class MyStatusMenu1Screen extends StatelessWidget {
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
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: size.width,
                          decoration: AppDecoration.fillWhiteA700,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomAppBar(
                                    height: getVerticalSize(99.00),
                                    centerTitle: true,
                                    title: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 20, top: 9, right: 21),
                                              child: Row(children: [
                                                AppbarImage(
                                                    height:
                                                        getVerticalSize(12.00),
                                                    width:
                                                        getHorizontalSize(6.00),
                                                    svgPath: ImageConstant
                                                        .imgArrowleftWhiteA700,
                                                    margin: getMargin(
                                                        top: 5, bottom: 7),
                                                    onTap: () =>
                                                        onTapArrowleft37(
                                                            context)),
                                                AppbarCircleimage(
                                                    imagePath: ImageConstant
                                                        .imgEllipse7125x125,
                                                    margin:
                                                        getMargin(left: 18)),
                                                AppbarTitle(
                                                    text: "La Pino’s Pizza",
                                                    margin: getMargin(
                                                        left: 9, bottom: 1)),
                                                Container(
                                                    height:
                                                        getVerticalSize(20.00),
                                                    width:
                                                        getHorizontalSize(1.00),
                                                    margin: getMargin(
                                                        left: 157,
                                                        top: 3,
                                                        bottom: 1),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
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
                                                            strokeAlign:BorderSide.strokeAlignCenter)))
                                              ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 18,
                                                  top: 13,
                                                  right: 20,
                                                  bottom: 51),
                                              child: Row(children: [
                                                Container(
                                                    height:
                                                        getVerticalSize(2.00),
                                                    width: getHorizontalSize(
                                                        167.00),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    1.00)))),
                                                Container(
                                                    height:
                                                        getVerticalSize(2.00),
                                                    width: getHorizontalSize(
                                                        167.00),
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
                                    styleType:
                                        Style.bgGradientGray900ceGray90000),
                                Padding(
                                    padding: getPadding(top: 247),
                                    child: Text("New Offers",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium18)),
                                Spacer(),
                                Container(
                                    width: size.width,
                                    padding: getPadding(
                                        left: 163,
                                        top: 8,
                                        right: 163,
                                        bottom: 8),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgRectangle,
                                              height: getVerticalSize(5.00),
                                              width: getHorizontalSize(48.00),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(2.00)),
                                              margin: getMargin(bottom: 3))
                                        ]))
                              ]))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(bottom: 24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgLocationGray900,
                                          height: getSize(24.00),
                                          width: getSize(24.00)),
                                      Padding(
                                          padding: getPadding(left: 8, top: 1),
                                          child: Text("18th Street Brewery",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRobotoRegular18))
                                    ]),
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle4329,
                                    height: getVerticalSize(99.00),
                                    width: getHorizontalSize(374.00),
                                    margin: getMargin(top: 227))
                              ])))
                ]))));
  }

  onTapArrowleft37(BuildContext context) {
    Navigator.pop(context);
  }
}
