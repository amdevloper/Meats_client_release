import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';

class MyWallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                // leadingWidth: 42,
                // centerTitle: true,
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 18,bottom: 8),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () => onTapArrowleft25(context)),
                                AppbarSubtitle1(
                                    text: "My Wall",
                                    margin:
                                        getMargin(left: 14))
                              ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 14),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)))
                        ])),
                styleType: Style.bgFillWhiteA700_1),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse7125x125,
                                        height: getSize(40.00),
                                        width: getSize(40.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(20.00))),
                                    Padding(
                                        padding: getPadding(left: 12),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(children: [
                                                Text("La Pino’s Pizza",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16Black900),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 95, top: 1),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "24",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .gray900,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700)),
                                                          TextSpan(
                                                              text: " ",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .gray900,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500)),
                                                          TextSpan(
                                                              text: "Followers",
                                                              style: TextStyle(
                                                                  color: ColorConstant
                                                                      .blueGray300,
                                                                  fontSize:
                                                                      getFontSize(
                                                                          14),
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500))
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))
                                              ]),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Text("La Pino’s Pizza",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular14Gray600))
                                            ]))
                                  ]),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(270.00),
                                      margin: getMargin(left: 17, top: 14),
                                      child: Text(
                                          "Fast Food Restaurant\r\nOfficial La Pino'z Pizza Account\r\nFollow now for latest deals & offers 🍕🍕\r\nServing happiness with 300+ outlets across India :)",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular12Gray900))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 12),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              // Padding(
                              //     padding:
                              //         getPadding(left: 18, top: 14, right: 3),
                              //     child: Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.spaceBetween,
                              //         children: [
                              //           Container(
                              //               height: getVerticalSize(50.00),
                              //               width: getHorizontalSize(53.00),
                              //               child: Stack(
                              //                   alignment: Alignment.topRight,
                              //                   children: [
                              //                     Align(
                              //                         alignment:
                              //                             Alignment.centerLeft,
                              //                         child: Card(
                              //                             clipBehavior:
                              //                                 Clip.antiAlias,
                              //                             elevation: 0,
                              //                             margin:
                              //                                 EdgeInsets.all(0),
                              //                             color: ColorConstant
                              //                                 .gray90001,
                              //                             shape: RoundedRectangleBorder(
                              //                                 borderRadius:
                              //                                     BorderRadius.circular(
                              //                                         getHorizontalSize(
                              //                                             25.00))),
                              //                             child: Container(
                              //                                 height: getSize(
                              //                                     50.00),
                              //                                 width: getSize(
                              //                                     50.00),
                              //                                 padding:
                              //                                     getPadding(
                              //                                         all: 1),
                              //                                 decoration: AppDecoration
                              //                                     .outlineRedA70030
                              //                                     .copyWith(
                              //                                         borderRadius:
                              //                                             BorderRadiusStyle
                              //                                                 .circleBorder24),
                              //                                 child: Stack(
                              //                                     children: [
                              //                                       CustomImageView(
                              //                                           imagePath:
                              //                                               ImageConstant
                              //                                                   .imgEllipse7125x125,
                              //                                           height: getSize(
                              //                                               48.00),
                              //                                           width: getSize(
                              //                                               48.00),
                              //                                           radius: BorderRadius.circular(getHorizontalSize(
                              //                                               24.00)),
                              //                                           alignment:
                              //                                               Alignment.center)
                              //                                     ])))),
                              //                     Align(
                              //                         alignment:
                              //                             Alignment.topRight,
                              //                         child: GestureDetector(
                              //                             onTap: () {
                              //                               onTapStackplus(
                              //                                   context);
                              //                             },
                              //                             child: Card(
                              //                                 clipBehavior: Clip
                              //                                     .antiAlias,
                              //                                 elevation: 0,
                              //                                 margin: EdgeInsets
                              //                                     .all(0),
                              //                                 color:
                              //                                     ColorConstant
                              //                                         .gray90001,
                              //                                 shape: RoundedRectangleBorder(
                              //                                     borderRadius:
                              //                                         BorderRadius.circular(
                              //                                             getHorizontalSize(
                              //                                                 8.00))),
                              //                                 child: Container(
                              //                                     height:
                              //                                         getSize(
                              //                                             17.00),
                              //                                     width: getSize(
                              //                                         17.00),
                              //                                     padding:
                              //                                         getPadding(
                              //                                             all:
                              //                                                 5),
                              //                                     decoration: AppDecoration
                              //                                         .outlineRedA70030
                              //                                         .copyWith(
                              //                                             borderRadius: BorderRadiusStyle
                              //                                                 .roundedBorder8),
                              //                                     child: Stack(
                              //                                         children: [
                              //                                           CustomImageView(
                              //                                               svgPath:
                              //                                                   ImageConstant.imgPlus,
                              //                                               height: getSize(6.00),
                              //                                               width: getSize(6.00),
                              //                                               alignment: Alignment.center)
                              //                                         ])))))
                              //                   ])),
                              //           CustomImageView(
                              //               imagePath:
                              //                   ImageConstant.imgEllipse712,
                              //               height: getSize(48.00),
                              //               width: getSize(48.00),
                              //               radius: BorderRadius.circular(
                              //                   getHorizontalSize(24.00)),
                              //               margin:
                              //                   getMargin(top: 1, bottom: 1)),
                              //           CustomImageView(
                              //               imagePath:
                              //                   ImageConstant.imgEllipse9,
                              //               height: getSize(48.00),
                              //               width: getSize(48.00),
                              //               radius: BorderRadius.circular(
                              //                   getHorizontalSize(24.00)),
                              //               margin:
                              //                   getMargin(top: 1, bottom: 1)),
                              //           CustomImageView(
                              //               imagePath:
                              //                   ImageConstant.imgEllipse10,
                              //               height: getSize(48.00),
                              //               width: getSize(48.00),
                              //               radius: BorderRadius.circular(
                              //                   getHorizontalSize(24.00)),
                              //               margin:
                              //                   getMargin(top: 1, bottom: 1)),
                              //           CustomImageView(
                              //               imagePath:
                              //                   ImageConstant.imgEllipse11,
                              //               height: getSize(48.00),
                              //               width: getSize(48.00),
                              //               radius: BorderRadius.circular(
                              //                   getHorizontalSize(24.00)),
                              //               margin:
                              //                   getMargin(top: 1, bottom: 1))
                              //         ])),
                              // Padding(
                              //     padding: getPadding(top: 7),
                              //     child: Row(
                              //         mainAxisAlignment:
                              //             MainAxisAlignment.center,
                              //         children: [
                              //           Padding(
                              //               padding: getPadding(top: 1),
                              //               child: Text("Your Story",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle
                              //                       .txtRobotoMedium12)),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 26, bottom: 1),
                              //               child: Text("17 Jun",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle
                              //                       .txtRobotoMedium12)),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 40, bottom: 1),
                              //               child: Text("24 Mar",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle
                              //                       .txtRobotoMedium12)),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 36, bottom: 1),
                              //               child: Text("15 Feb",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style: AppStyle
                              //                       .txtRobotoMedium12)),
                              //           Padding(
                              //               padding:
                              //                   getPadding(left: 42, bottom: 1),
                              //               child: Text("10 Jan",
                              //                   overflow: TextOverflow.ellipsis,
                              //                   textAlign: TextAlign.left,
                              //                   style:
                              //                       AppStyle.txtRobotoMedium12))
                              //         ])),
                              // Container(
                              //     height: getVerticalSize(1.00),
                              //     width: size.width,
                              //     margin: getMargin(top: 17),
                              //     decoration: BoxDecoration(
                              //         color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 19, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse7125x125,
                                            height: getSize(27.00),
                                            width: getSize(27.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(13.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 8, top: 3, bottom: 4),
                                            child: Text("La Pino’s Pizza",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRobotoBold16)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVector,
                                            height: getVerticalSize(18.00),
                                            width: getHorizontalSize(21.00),
                                            margin:
                                                getMargin(top: 4, bottom: 3)),
                                        Container(
                                            height: getVerticalSize(20.00),
                                            width: getHorizontalSize(1.00),
                                            margin: getMargin(
                                                left: 19, top: 3, bottom: 3),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius: BorderRadius
                                                    .circular(getHorizontalSize(
                                                        10.00)),
                                                border: Border.all(
                                                    color:
                                                        ColorConstant.gray900,
                                                    width:
                                                        getHorizontalSize(1.00),
                                                    strokeAlign:BorderSide.strokeAlignCenter)))
                                      ])),
                              Container(
                                  height: getVerticalSize(200.00),
                                  width: getHorizontalSize(335.00),
                                  margin: getMargin(top: 11),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage200x335,
                                            height: getVerticalSize(200.00),
                                            width: getHorizontalSize(335.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.center),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA70030x30,
                                            height: getSize(30.00),
                                            width: getSize(30.00),
                                            alignment: Alignment.center)
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 17, top: 14),
                                      child: Text(
                                          "On Saturdays we throwback and twirl 💃🏻",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular12Gray900))),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 10, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 8, bottom: 2),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "50",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                  TextSpan(
                                                      text: " ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  TextSpan(
                                                      text: "Likes",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .blueGray300,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w500))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Padding(
                                            padding: getPadding(
                                                left: 31, top: 8, bottom: 2),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "12",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w700)),
                                                  TextSpan(
                                                      text: " ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray900,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w500)),
                                                  TextSpan(
                                                      text: "Comments",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .blueGray300,
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w500))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgComputer,
                                            height: getSize(26.00),
                                            width: getSize(26.00))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 16),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Container(
                                  height: getVerticalSize(370.00),
                                  width: size.width,
                                  margin: getMargin(top: 19),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgComputer,
                                            height: getSize(26.00),
                                            width: getSize(26.00),
                                            alignment: Alignment.bottomRight,
                                            margin: getMargin(
                                                right: 23, bottom: 66)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                width: size.width,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 16,
                                                              right: 23),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse7125x125,
                                                                    height:
                                                                        getSize(
                                                                            27.00),
                                                                    width: getSize(
                                                                        27.00),
                                                                    radius: BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(13.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 8,
                                                                        top: 3,
                                                                        bottom:
                                                                            4),
                                                                    child: Text(
                                                                        "La Pino’s Pizza",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoBold16)),
                                                                Spacer(),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVector,
                                                                    height:
                                                                        getVerticalSize(
                                                                            18.00),
                                                                    width: getHorizontalSize(
                                                                        21.00),
                                                                    margin: getMargin(
                                                                        top: 4,
                                                                        bottom:
                                                                            3)),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            20.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            1.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            19,
                                                                        top: 3,
                                                                        bottom:
                                                                            3),
                                                                    decoration: BoxDecoration(
                                                                        color: ColorConstant
                                                                            .whiteA700,
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                10.00)),
                                                                        border: Border.all(
                                                                            color:
                                                                                ColorConstant.gray900,
                                                                            width: getHorizontalSize(1.00),
                                                                            strokeAlign: BorderSide.strokeAlignCenter)))
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  200.00),
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 11),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage1,
                                                                    height: getVerticalSize(
                                                                        200.00),
                                                                    width: getHorizontalSize(
                                                                        335.00),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            10.00)),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                // Align(
                                                                //     alignment:
                                                                //         Alignment
                                                                //             .topCenter,
                                                                //     child: Container(
                                                                //         width: size.width,
                                                                //         margin: getMargin(top: 43),
                                                                //         padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
                                                                //         decoration: AppDecoration.fillWhiteA700,
                                                                //         child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                //           CustomImageView(
                                                                //               svgPath: ImageConstant.imgRectangle,
                                                                //               height: getVerticalSize(5.00),
                                                                //               width: getHorizontalSize(48.00),
                                                                //               radius: BorderRadius.circular(getHorizontalSize(2.00)),
                                                                //               margin: getMargin(bottom: 3))
                                                                //         ])))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 14),
                                                          child: Text(
                                                              "Baby you’re golden, don’t ever forget that ✨",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular12Gray900)),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 17,
                                                                      top: 10),
                                                              child: Row(
                                                                  children: [
                                                                    RichText(
                                                                        text: TextSpan(
                                                                            children: [
                                                                              TextSpan(text: "50", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
                                                                              TextSpan(text: " ", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w500)),
                                                                              TextSpan(text: "Likes", style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w500))
                                                                            ]),
                                                                        textAlign:
                                                                            TextAlign.left),
                                                                    Padding(
                                                                        padding:
                                                                            getPadding(left: 31),
                                                                        child: RichText(
                                                                            text: TextSpan(children: [
                                                                              TextSpan(text: "12", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
                                                                              TextSpan(text: " ", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w500)),
                                                                              TextSpan(text: "Comments", style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(12), fontFamily: 'Roboto', fontWeight: FontWeight.w500))
                                                                            ]),
                                                                            textAlign: TextAlign.left))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 10),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300))
                                                    ]))),
                                        // CustomIconButton(
                                        //     height: 50,
                                        //     width: 50,
                                        //     margin: getMargin(right: 20),
                                        //     variant: IconButtonVariant
                                        //         .OutlineRedA70030,
                                        //     shape:
                                        //         IconButtonShape.CircleBorder25,
                                        //     padding:
                                        //         IconButtonPadding.PaddingAll14,
                                        //     alignment: Alignment.bottomRight,
                                        //     child: CustomImageView(
                                        //         svgPath: ImageConstant.imgPlus))
                                      ]))
                            ]))))));
  }

  onTapStackplus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addStatusCameraCaptureScreen);
  }

  onTapArrowleft25(BuildContext context) {
    Navigator.pop(context);
  }
}
