import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class GroupVideoCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(41.00),
                leadingWidth: 33,
                leading: AppbarImage(
                    height: getVerticalSize(12.00),
                    width: getHorizontalSize(6.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 27, top: 14, bottom: 15),
                    onTap: () => onTapArrowleft19(context)),
                title: AppbarSubtitle2(
                    text: "My Foodie Partner", margin: getMargin(left: 23))),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(216.00),
                          width: size.width,
                          margin: getMargin(top: 4),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(216.00),
                                        width: getHorizontalSize(188.00),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgImage186216x188,
                                                  height:
                                                      getVerticalSize(216.00),
                                                  width:
                                                      getHorizontalSize(188.00),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgMicrophone,
                                                  height: getSize(28.00),
                                                  width: getSize(28.00),
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  margin: getMargin(
                                                      right: 25, bottom: 17))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        height: getVerticalSize(216.00),
                                        width: getHorizontalSize(188.00),
                                        child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage187,
                                                  height:
                                                      getVerticalSize(216.00),
                                                  width:
                                                      getHorizontalSize(188.00),
                                                  alignment: Alignment.center),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgMicrophone,
                                                  height: getSize(28.00),
                                                  width: getSize(28.00),
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  margin: getMargin(
                                                      right: 20, bottom: 17))
                                            ]))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)))
                              ])),
                      Container(
                          height: getVerticalSize(506.00),
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage188,
                                    height: getVerticalSize(506.00),
                                    width: getHorizontalSize(375.00),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        width: size.width,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 32, right: 59),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        CustomIconButton(
                                                            height: 56,
                                                            width: 56,
                                                            margin: getMargin(
                                                                top: 4,
                                                                bottom: 4),
                                                            shape: IconButtonShape
                                                                .CircleBorder28,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll14,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVideocamera)),
                                                        CustomIconButton(
                                                            height: 64,
                                                            width: 64,
                                                            variant:
                                                                IconButtonVariant
                                                                    .FillGray90001,
                                                            shape: IconButtonShape
                                                                .CircleBorder32,
                                                            padding:
                                                                IconButtonPadding
                                                                    .PaddingAll14,
                                                            child: CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgShare)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgMicrophone,
                                                            height:
                                                                getSize(28.00),
                                                            width:
                                                                getSize(28.00),
                                                            margin: getMargin(
                                                                top: 18,
                                                                bottom: 18))
                                                      ])),
                                            ])))
                              ]))
                    ]))));
  }

  onTapArrowleft19(BuildContext context) {
    Navigator.pop(context);
  }
}
