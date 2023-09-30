import 'package:url_launcher/url_launcher.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_image_view.dart';
import '../social_post_menu_screen/widgets/listyourstory1_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SocialPostMenuScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(20.00),
                title: AppbarSubtitle2(
                    text: "Social", margin: getMargin(left: 20)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(18.00),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 20, right: 20))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(374.00),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 18, top: 15, right: 2),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: getVerticalSize(49.00),
                                                width: getHorizontalSize(53.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin:
                                                                  EdgeInsets
                                                                      .all(0),
                                                              color: ColorConstant
                                                                  .gray90001,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              25.00))),
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          50.00),
                                                                  width:
                                                                      getSize(
                                                                          50.00),
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              1),
                                                                  decoration: AppDecoration
                                                                      .outlineRedA70030
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .circleBorder24),
                                                                  child: Stack(
                                                                      children: [
                                                                        CustomImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgEllipse7125x125,
                                                                            height: getSize(48.00),
                                                                            width: getSize(48.00),
                                                                            radius: BorderRadius.circular(getHorizontalSize(24.00)),
                                                                            alignment: Alignment.center)
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topRight,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets
                                                                  .all(0),
                                                              color:
                                                                  ColorConstant
                                                                      .gray90001,
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              8.00))),
                                                              child: Container(
                                                                  height:
                                                                      getSize(
                                                                          17.00),
                                                                  width: getSize(
                                                                      17.00),
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              5),
                                                                  decoration: AppDecoration
                                                                      .outlineRedA70030
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder8),
                                                                  child: Stack(
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgPlus,
                                                                            height: getSize(6.00),
                                                                            width: getSize(6.00),
                                                                            alignment: Alignment.center)
                                                                      ]))))
                                                    ])),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse712,
                                                height: getSize(48.00),
                                                width: getSize(48.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(24.00)),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse9,
                                                height: getSize(48.00),
                                                width: getSize(48.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(24.00)),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse10,
                                                height: getSize(48.00),
                                                width: getSize(48.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(24.00)),
                                                margin: getMargin(
                                                    top: 1, bottom: 1)),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgEllipse11,
                                                height: getSize(48.00),
                                                width: getSize(48.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(24.00)),
                                                margin: getMargin(
                                                    top: 1, bottom: 1))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(23.00),
                                      child: ListView.separated(
                                          padding: getPadding(left: 17, top: 7),
                                          scrollDirection: Axis.horizontal,
                                          physics: BouncingScrollPhysics(),
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(26.00));
                                          },
                                          itemCount: 5,
                                          itemBuilder: (context, index) {
                                            return Listyourstory1ItemWidget();
                                          }))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(top: 17),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Container(
                                  height: getVerticalSize(241.00),
                                  width: getHorizontalSize(336.00),
                                  margin: getMargin(top: 15),
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage4,
                                            height: getVerticalSize(200.00),
                                            width: getHorizontalSize(335.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.bottomCenter),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                                padding: getPadding(top: 3),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImageplaceholder18,
                                                          height:
                                                              getSize(27.00),
                                                          width: getSize(27.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      13.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 8,
                                                              top: 3,
                                                              bottom: 4),
                                                          child: Text(
                                                              "La Pino’s Pizza",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoBold16))
                                                    ]))),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgVector,
                                            height: getSize(25.00),
                                            width: getSize(25.00),
                                            alignment: Alignment.topRight,
                                            margin:
                                                getMargin(top: 4, right: 20)),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: getVerticalSize(20.00),
                                                width: getHorizontalSize(1.00),
                                                margin: getMargin(top: 6),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                10.00)),
                                                    border: Border.all(
                                                        color: ColorConstant
                                                            .blueGray300,
                                                        width:
                                                            getHorizontalSize(
                                                                1.00),
                                                        strokeAlign:BorderSide.strokeAlignCenter)))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                width:
                                                    getHorizontalSize(135.00),
                                                margin: getMargin(right: 10),
                                                padding: getPadding(
                                                    left: 18,
                                                    top: 24,
                                                    right: 18,
                                                    bottom: 24),
                                                decoration: AppDecoration
                                                    .outlineBlack90033
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 6),
                                                          child: Text(
                                                              "Copy Link",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16Gray900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 27),
                                                          child: Text("Share",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16Gray900)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 29),
                                                          child: Text("Hide",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16Gray900))
                                                    ])))
                                      ])),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(318.00),
                                      margin: getMargin(left: 17, top: 13),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "Get your pizza at your doorstep. La Pinoz is safely delivering the box of happiness to your place in every way. \r\n\nDownload App now: ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "https://rb.gy/hdotmb",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.indigo900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ]),
                                          textAlign: TextAlign.left))),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 8, right: 22),
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
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(top: 16),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 19, right: 23),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                            svgPath: ImageConstant
                                                .imgFavoriteGray90001,
                                            height: getSize(25.00),
                                            width: getSize(25.00),
                                            margin:
                                                getMargin(top: 1, bottom: 1)),
                                        Container(
                                            height: getVerticalSize(20.00),
                                            width: getHorizontalSize(1.00),
                                            margin: getMargin(
                                                left: 18, top: 4, bottom: 2),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.whiteA700,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            10.00)),
                                                border: Border.all(
                                                    color: ColorConstant
                                                        .blueGray300,
                                                    width:
                                                        getHorizontalSize(1.00),
                                                    strokeAlign:BorderSide.strokeAlignCenter)))
                                      ])),
                              Container(
                                  height: getVerticalSize(200.00),
                                  width: size.width,
                                  margin: getMargin(top: 11),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage5,
                                            height: getVerticalSize(200.00),
                                            width: getHorizontalSize(335.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(153.00),
                                                width: size.width,
                                                margin: getMargin(top: 16),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  bottom: 1),
                                                              padding:
                                                                  getPadding(
                                                                      left: 163,
                                                                      top: 8,
                                                                      right:
                                                                          163,
                                                                      bottom:
                                                                          8),
                                                              decoration: AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderTL16),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgRectangle,
                                                                        height: getVerticalSize(
                                                                            5.00),
                                                                        width: getHorizontalSize(
                                                                            48.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            2.00)),
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                3))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              width: size.width,
                                                              padding:
                                                                  getPadding(
                                                                      left: 163,
                                                                      top: 8,
                                                                      right:
                                                                          163,
                                                                      bottom:
                                                                          8),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700,
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgRectangle,
                                                                        height: getVerticalSize(
                                                                            5.00),
                                                                        width: getHorizontalSize(
                                                                            48.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            2.00)),
                                                                        margin: getMargin(
                                                                            bottom:
                                                                                3))
                                                                  ])))
                                                    ])))
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtThereisanewths(context);
                                  },
                                  child: Container(
                                      width: getHorizontalSize(335.00),
                                      margin: getMargin(top: 14),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "\rThere is a new Thús menu in our web shop. Now also available to order asparagus\n\nDownload App now: ",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w400)),
                                            TextSpan(
                                                text: "https://rb.gy/hdotmb",
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.indigo900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ]),
                                          textAlign: TextAlign.left))),
                              Padding(
                                  padding:
                                      getPadding(left: 17, top: 10, right: 22),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "50",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "Likes",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .blueGray300,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ]),
                                            textAlign: TextAlign.left),
                                        Padding(
                                            padding: getPadding(left: 31),
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
                                            width: getSize(26.00),
                                            margin: getMargin(bottom: 6))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(top: 10),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300))
                            ])))),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {
            //   Navigator.pushNamed(
            //       navigatorKey.currentContext!, getCurrentRoute(type));
            // }),
            floatingActionButton: CustomFloatingButton(
                height: 50,
                width: 50,
                onTap: () {
                  onTapBtnFloatingactionbutton(context);
                },
                child: CustomImageView(
                    svgPath: ImageConstant.imgPlus,
                    height: getVerticalSize(25.00),
                    width: getHorizontalSize(25.00)))));
  }

  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.newNotificationsPage;
  //     case BottomBarEnum.Myorders:
  //       return AppRoutes.myOrdersTabContainerPage;
  //     case BottomBarEnum.Social:
  //       return AppRoutes.socialHomePage;
  //     case BottomBarEnum.Menu:
  //       return AppRoutes.menu1Page;
  //     case BottomBarEnum.Account:
  //       return AppRoutes.accountPage;
  //     default:
  //       return "/";
  //   }
  // }
  //
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.newNotificationsPage:
  //       return NewNotificationsPage();
  //     case AppRoutes.myOrdersTabContainerPage:
  //       return MyOrdersTabContainerPage();
  //     case AppRoutes.socialHomePage:
  //       return SocialHomePage();
  //     case AppRoutes.menu1Page:
  //       return Menu1Page();
  //     case AppRoutes.accountPage:
  //       return AccountPage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  onTapBtnFloatingactionbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.createPostScreen);
  }

  onTapTxtThereisanewths(BuildContext context) async {
    var url = 'https://rb.gy/hdotmb';
    if (!await launch(url)) {
      throw 'Could not launch https://rb.gy/hdotmb';
    }
  }
}
