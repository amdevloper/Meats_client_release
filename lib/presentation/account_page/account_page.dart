import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(46.00),
                centerTitle: true,
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 20, top: 9, right: 21),
                              child: Row(children: [
                                AppbarSubtitle3(
                                    text: "Account",
                                    margin: getMargin(bottom: 1)),
                                // AppbarImage(
                                //     height: getVerticalSize(20.00),
                                //     width: getHorizontalSize(18.00),
                                //     svgPath: ImageConstant.imgNotification,
                                //     margin: getMargin(left: 256),
                                //     onTap: () => onTapNotification2(context))
                              ])),
                          // Container(
                          //     height: getVerticalSize(1.00),
                          //     width: size.width,
                          //     margin: getMargin(top: 16),
                          //     decoration:
                          //         BoxDecoration(color: ColorConstant.gray300))
                        ])),
                styleType: Style.bgFillWhiteA700_1),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  width: size.width,
                                  padding: getPadding(
                                      left: 20, right: 20),
                                  decoration: AppDecoration.fillIndigo900,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse7125x125,
                                            height: getSize(60.00),
                                            width: getSize(60.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(30.00)),
                                            margin: getMargin(top: 10, bottom: 10)),
                                        Padding(
                                            padding:
                                                getPadding(bottom: 15, top: 15),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 3),
                                                      child: Row(children: [
                                                        Text("La Pino’s Pizza",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium16WhiteA700),
                                                      ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5, left: 7),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLocationGray300,
                                                            height:
                                                                getSize(19.00),
                                                            width:
                                                                getSize(19.00)),
                                                        Text(
                                                            "Lakewood, CA, USA",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign
                                                                    .left,
                                                            style: AppStyle
                                                                .txtRobotoRegular12)
                                                      ]))
                                                ])),
                                        Padding(
                                          padding:  EdgeInsets.only(left: size.width / 3.5,top: 5),
                                          child: Positioned(
                                            right: 5,
                                            bottom: 5,
                                            child: Container(
                                              margin: getMargin(bottom: 25,right: 34),
                                              width: 45,
                                              height: 23,
                                              decoration: AppDecoration
                                                  .outlineIndigo900
                                                  .copyWith(
                                                  borderRadius:
                                                  BorderRadiusStyle.roundedBorder47),
                                              child: Row(
                                                children: [
                                                  const SizedBox(width: 5),
                                                  const Text("4.5"),
                                                  const SizedBox(width: 5),
                                                  CustomImageView(svgPath:ImageConstant.imgStar),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ])),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 20),
                                  padding: getPadding(left: 20, right: 20),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgUser,
                                                        height: getSize(24.00),
                                                        width: getSize(24.00)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            top: 3,
                                                            bottom: 1),
                                                        child: Text("My Wall",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular16Gray900)),
                                                    Spacer(),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowrightGray900,
                                                        height: getSize(24.00),
                                                        width: getSize(24.00),
                                                        onTap: () {
                                                          onTapImgArrowright(
                                                              context);
                                                        })
                                                  ]),
                                              Container(
                                                  height: getVerticalSize(1.00),
                                                  width:
                                                      getHorizontalSize(335.00),
                                                  margin: getMargin(top: 16),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .gray300))
                                            ]),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgEdit,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 1,
                                                                bottom: 3),
                                                            child: Text(
                                                                "Edit Profile",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Gray900)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightGray900,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            onTap: () {
                                                              onTapImgArrowrightOne(
                                                                  context);
                                                            })
                                                      ]),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          335.00),
                                                      margin:
                                                          getMargin(top: 16),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgLock,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 3,
                                                                bottom: 1),
                                                            child: Text(
                                                                "Change Password",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Gray900)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightGray900,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            onTap: () {
                                                              onTapImgArrowrightTwo(
                                                                  context);
                                                            })
                                                      ]),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          335.00),
                                                      margin:
                                                          getMargin(top: 16),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgBookmark,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 3,
                                                                bottom: 1),
                                                            child: Text(
                                                                "Manage Timing",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Gray900)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightGray900,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            onTap: () {
                                                              onTapImgArrowrightThree(
                                                                  context);
                                                            })
                                                      ]),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          335.00),
                                                      margin:
                                                          getMargin(top: 16),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 2),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgStarBlueGray300,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            4)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 1,
                                                                        bottom:
                                                                            3),
                                                                child: Text(
                                                                    "Reviews",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16Gray900)),
                                                            Spacer(),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowrightGray900,
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00),
                                                                onTap: () {
                                                                  onTapImgArrowrightFour(
                                                                      context);
                                                                })
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          335.00),
                                                      margin:
                                                          getMargin(top: 16),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 14),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCreditcard,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 3,
                                                                bottom: 1),
                                                            child: Text(
                                                                "Manage Payments",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Gray900)),
                                                        Spacer(),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightGray900,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00),
                                                            onTap: () {
                                                              onTapImgArrowrightFive(
                                                                  context);
                                                            })
                                                      ]),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          335.00),
                                                      margin:
                                                          getMargin(top: 17),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 20),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFileBlueGray300,
                                                                height:
                                                                    getVerticalSize(
                                                                        19.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        20.00),
                                                                margin:
                                                                    getMargin(
                                                                        bottom:
                                                                            5)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 3,
                                                                        bottom:
                                                                            1),
                                                                child: Text(
                                                                    "My Wallet",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16Gray900)),
                                                            Spacer(),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowrightGray900,
                                                                height: getSize(
                                                                    24.00),
                                                                width: getSize(
                                                                    24.00))
                                                          ])),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          335.00),
                                                      margin:
                                                          getMargin(top: 11),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ])),
                                        // Padding(
                                        //     padding: getPadding(top: 15),
                                        //     child: Column(
                                        //         mainAxisAlignment:
                                        //             MainAxisAlignment.start,
                                        //         children: [
                                        //           Row(
                                        //               mainAxisAlignment:
                                        //                   MainAxisAlignment
                                        //                       .center,
                                        //               children: [
                                        //                 CustomImageView(
                                        //                     svgPath:
                                        //                         ImageConstant
                                        //                             .imgSettings,
                                        //                     height:
                                        //                         getSize(24.00),
                                        //                     width:
                                        //                         getSize(24.00)),
                                        //                 Padding(
                                        //                     padding: getPadding(
                                        //                         left: 12,
                                        //                         top: 3,
                                        //                         bottom: 1),
                                        //                     child: Text(
                                        //                         "Settings",
                                        //                         overflow:
                                        //                             TextOverflow
                                        //                                 .ellipsis,
                                        //                         textAlign:
                                        //                             TextAlign
                                        //                                 .left,
                                        //                         style: AppStyle
                                        //                             .txtRobotoRegular16Gray900)),
                                        //                 Spacer(),
                                        //                 CustomImageView(
                                        //                     svgPath: ImageConstant
                                        //                         .imgArrowrightGray900,
                                        //                     height:
                                        //                         getSize(24.00),
                                        //                     width:
                                        //                         getSize(24.00))
                                        //               ]),
                                        //           Container(
                                        //               height:
                                        //                   getVerticalSize(1.00),
                                        //               width: getHorizontalSize(
                                        //                   335.00),
                                        //               margin:
                                        //                   getMargin(top: 16),
                                        //               decoration: BoxDecoration(
                                        //                   color: ColorConstant
                                        //                       .gray300))
                                        //         ])),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgMusic,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 3,
                                                                bottom: 1),
                                                            child: Text(
                                                                "Help Support",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Gray900)),
                                                        Spacer(),
                                                        GestureDetector(
                                                          onTap: () {
                                                          Navigator.of(context).pushNamed(AppRoutes.helpSupportScreen);
                                                          },
                                                          child: CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgArrowrightGray900,
                                                              height:
                                                                  getSize(24.00),
                                                              width:
                                                                  getSize(24.00)),
                                                        )
                                                      ]),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          335.00),
                                                      margin:
                                                          getMargin(top: 16),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 15),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCall,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 12,
                                                                top: 1,
                                                                bottom: 3),
                                                            child: Text(
                                                                "Contact us",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Gray900)),
                                                        Spacer(),
                                                        GestureDetector(
                                                            onTap: () {
                                                              Navigator.of(context).pushNamed(AppRoutes.contactUsScreen);
                                                            },
                                                            child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightGray900,
                                                            height:
                                                                getSize(24.00),
                                                            width:
                                                                getSize(24.00)))
                                                      ]),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          335.00),
                                                      margin:
                                                          getMargin(top: 16),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ]))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 15, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowright,
                                            height: getSize(24.00),
                                            width: getSize(24.00)),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 3, bottom: 1),
                                            child: Text("Logout",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Gray900)),
                                        Spacer(),
                                  GestureDetector(
                                      onTap: () {
                                        showMessageView(context);
                                        // Navigator.of(context).pushNamed(AppRoutes.logoutScreen);
                                      },
                                      child: CustomImageView(
                                            svgPath: ImageConstant.imgArrowrightGray900,
                                            height: getSize(24.00),
                                            width: getSize(24.00)))
                                      ]))
                            ]))))));
  }


  Future showMessageView(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              title: Text("Logout ?",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoMedium24Black900),
              content: Container(
                  width: getHorizontalSize(334.00),
                  padding: getPadding(top: 0, bottom: 0),
                  decoration: AppDecoration.fillWhiteA700
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20, color: Colors.white),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(

                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(
                                MediaQuery.of(context).size.width),
                            // margin: getMargin(top: 15),
                            decoration:
                            BoxDecoration(color: ColorConstant.gray300)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: getHorizontalSize(196.00),
                                margin: getMargin(left: 20, top: 30),
                                child: Text(
                                    "Are you sure want to logout from M.E.A.T.S app ?",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.txtRobotoRegular16Gray900))),
                        CustomButton(
                            height: 40,
                            width: 290,
                            text: "Yes",
                            margin: getMargin(top: 28),
                            onTap: () {
                              Navigator.popUntil(context, ModalRoute.withName('/sign_in_screen'));
                            }),
                        Padding(
                            padding: getPadding(top: 5),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("No",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.txtRobotoBold16Bluegray300)))
                      ])));
        });
  }


  onTapImgArrowright(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myWallScreen);
  }

  onTapImgArrowrightOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  onTapImgArrowrightTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
  }

  onTapImgArrowrightThree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.manageTimingScreen);
  }

  onTapImgArrowrightFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewsScreen);
  }

  onTapImgArrowrightFive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.managePaymentsScreen);
  }

  onTapNotification2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }
}
