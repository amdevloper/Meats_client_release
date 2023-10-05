import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class MyWalletScreen extends StatelessWidget {
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
                              padding: getPadding(left: 18, top: 8, right: 249),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () => onTapArrowleft42(context)),
                                AppbarSubtitle1(
                                    text: "My Wallet",
                                    margin:
                                        getMargin(left: 14, top: 3, bottom: 1))
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
                        margin: getMargin(top: 18),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("M.E.A.T.S Wallet",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold24),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Available Balance ",
                                            style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "\$245.00",
                                            style: TextStyle(
                                                color: ColorConstant.indigo900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w700))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  width: getHorizontalSize(335.00),
                                  margin:
                                      getMargin(left: 20, top: 40, right: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8.00))),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Add Money",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium16Bluegray300),
                                        Container(
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 9),
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 16,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("\$50.00",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium16Gray900))
                                                ]))
                                      ])),
                              CustomButton(
                                  height: 48,
                                  width: 335,
                                  text: "Add 50.00",
                                  margin: getMargin(top: 30)),
                              Container(
                                  height: getVerticalSize(5.00),
                                  width: size.width,
                                  margin: getMargin(top: 30),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray200,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(2.00)))),
                              Container(
                                  height: getVerticalSize(476.00),
                                  width: size.width,
                                  margin: getMargin(top: 21),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                                width: size.width,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20),
                                                          child: Text(
                                                              "Wallet History",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoBold18)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 26,
                                                                      top: 14,
                                                                      right:
                                                                          26),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        "Daily",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoMedium14Gray90001),
                                                                    Text(
                                                                        "Weekly",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular14),
                                                                    Text(
                                                                        "Monthly",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular14),
                                                                    Text(
                                                                        "Yearly",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular14)
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 31,
                                                                      right:
                                                                          20),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            179.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "Received from m.e.a.t.s\nOrder Canceled",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium16Gray900)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                22),
                                                                        child: Text(
                                                                            "\$14.00",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoBold16Teal300))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 8),
                                                          child: Text(
                                                              "Yesterday, 12:00 PM",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular12)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 19),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 16,
                                                                      right:
                                                                          20),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            162.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "Paid to La Pino’s Pizza \nOrder ID #123456",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium16Gray900)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                22),
                                                                        child: Text(
                                                                            "- \$14.00",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoBold16Gray90001))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 8),
                                                          child: Text(
                                                              "10 Sep 2021 | 8:00PM",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular12)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 19),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 16,
                                                                      right:
                                                                          20),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            179.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "Received from m.e.a.t.s\nOrder Canceled",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium16Gray900)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                22),
                                                                        child: Text(
                                                                            "\$14.00",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoBold16Teal300))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 8),
                                                          child: Text(
                                                              "Yesterday, 12:00 PM",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular12)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  24.00),
                                                          width: size.width,
                                                          margin:
                                                              getMargin(top: 8),
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: size
                                                                            .width,
                                                                        decoration:
                                                                            BoxDecoration(color: ColorConstant.gray300))),
                                                              ])),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 7,
                                                                      right:
                                                                          20),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            246.00),
                                                                        child: Text(
                                                                            "Paid to La Pino’s Pizza \nOrder ID #123456",
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtRobotoMedium16Gray900)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                24),
                                                                        child: Text(
                                                                            "- \$14.00",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoBold16Gray90001))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 20, top: 6),
                                                          child: Text(
                                                              "10 Sep 2021 | 8:00PM",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular12)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 20),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(374.00),
                                                margin: getMargin(top: 65),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray300,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1.00))))),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Container(
                                                height: getVerticalSize(1.00),
                                                width: getHorizontalSize(76.00),
                                                margin: getMargin(top: 65),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray90001,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                1.00)))))
                                      ]))
                            ]))))));
  }

  onTapArrowleft42(BuildContext context) {
    Navigator.pop(context);
  }
}
