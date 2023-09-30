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

class OtherStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(99.00),
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 20, top: 9, right: 21),
                          child: Row(children: [
                            AppbarImage(
                                height: getVerticalSize(12.00),
                                width: getHorizontalSize(6.00),
                                svgPath: ImageConstant.imgArrowleftWhiteA700,
                                margin: getMargin(top: 5, bottom: 7),
                                onTap: () => onTapArrowleft34(context)),
                            AppbarCircleimage(
                                imagePath: ImageConstant.imgEllipse9,
                                margin: getMargin(left: 18)),
                            AppbarTitle(
                                text: "Lacosta",
                                margin: getMargin(left: 9, bottom: 1)),
                            Container(
                                height: getVerticalSize(20.00),
                                width: getHorizontalSize(1.00),
                                margin: getMargin(left: 211, top: 3, bottom: 1),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(10.00)),
                                    border: Border.all(
                                        color: ColorConstant.whiteA700,
                                        width: getHorizontalSize(1.00),
                                        strokeAlign: BorderSide.strokeAlignCenter)))
                          ])),
                      Padding(
                          padding: getPadding(
                              left: 18, top: 13, right: 20, bottom: 51),
                          child: Row(children: [
                            Container(
                                height: getVerticalSize(2.00),
                                width: getHorizontalSize(167.00),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(1.00)))),
                            Container(
                                height: getVerticalSize(2.00),
                                width: getHorizontalSize(167.00),
                                margin: getMargin(left: 3),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA7007e,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(1.00))))
                          ]))
                    ]),
                styleType: Style.bgGradientGray900ceGray90000),
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup756),
                        fit: BoxFit.cover)),
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Spacer(),
                          Container(
                              width: size.width,
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(ImageConstant.imgGroup756),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: size.width,
                                        padding: getPadding(
                                            left: 20,
                                            top: 17,
                                            right: 20,
                                            bottom: 17),
                                        decoration: AppDecoration
                                            .gradientGray900ceGray90000,
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLocationWhiteA700,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  margin: getMargin(top: 39)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 41,
                                                      right: 146),
                                                  child: Text(
                                                      "18th Street Brewery",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular18WhiteA700))
                                            ]))
                                  ]))
                        ]))),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgRectangle,
                          height: getVerticalSize(5.00),
                          width: getHorizontalSize(48.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(2.00)),
                          margin: getMargin(bottom: 3))
                    ]))));
  }

  onTapArrowleft34(BuildContext context) {
    Navigator.pop(context);
  }
}
