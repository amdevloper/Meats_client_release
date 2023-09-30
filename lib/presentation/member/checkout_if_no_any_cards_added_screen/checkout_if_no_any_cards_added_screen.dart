import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CheckoutIfNoAnyCardsAddedScreen extends StatelessWidget {
  TextEditingController controlsTextController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(46.00),
                centerTitle: true,
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 18, top: 8, right: 243),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () => onTapArrowleft12(context)),
                                AppbarSubtitle(
                                    text: "Checkout",
                                    margin: getMargin(left: 14, bottom: 1))
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
                        margin: getMargin(top: 20),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder,
                                            height: getSize(60.00),
                                            width: getSize(60.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 7, bottom: 10),
                                            child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("La Pino’s Pizza",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium16Gray900),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 126,
                                                                top: 5,
                                                                bottom: 1),
                                                            child: Text(
                                                                "To Pay",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular10Bluegray300))
                                                      ]),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 7),
                                                                child: Text(
                                                                    "2 Items | ETA : 30 Mins",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular12Bluegray300)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            88,
                                                                        bottom:
                                                                            3),
                                                                child: Text(
                                                                    "\$ 16.00",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium16Gray90001))
                                                          ]))
                                                ]))
                                      ])),
                              Container(
                                  height: getVerticalSize(5.00),
                                  width: size.width,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray200,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(2.00)))),
                              Padding(
                                  padding: getPadding(left: 20, top: 19),
                                  child: Text("Delivery Address",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRobotoMedium16Gray900)),
                              Padding(
                                  padding: getPadding(left: 20, top: 14),
                                  child: Text("Work",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoMedium14Bluegray300)),
                              Container(
                                  width: getHorizontalSize(253.00),
                                  margin: getMargin(left: 20, top: 7),
                                  child: Text(
                                      "18th Street Brewery, Oakley Avenue, \nHammond, IN",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular16)),
                              Container(
                                  height: getVerticalSize(5.00),
                                  width: size.width,
                                  margin: getMargin(top: 18),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray200,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(2.00)))),
                              Padding(
                                  padding: getPadding(left: 20, top: 19),
                                  child: Text("Billing Person Details",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRobotoMedium16Gray900)),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextController,
                                  hintText: "Alex Martin",
                                  margin: getMargin(top: 17),
                                  fontStyle:
                                      TextFormFieldFontStyle.RobotoMedium16,
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 20, top: 20, right: 20),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.outlineGray300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(children: [
                                        Container(
                                            margin:
                                                getMargin(top: 2, bottom: 2),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(8.00),
                                                      width: getHorizontalSize(
                                                          20.00),
                                                      margin:
                                                          getMargin(bottom: 8),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .redA200,
                                                          borderRadius: BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          2.00)),
                                                              topRight: Radius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          2.00)))))
                                                ])),
                                        CustomDropDown(
                                            width: 39,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(left: 7),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownBlack900)),
                                            hintText: "+1",
                                            margin:
                                                getMargin(left: 4, bottom: 1),
                                            variant: DropDownVariant.None,
                                            items: dropdownItemList,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding: getPadding(
                                                left: 16,
                                                right: 124,
                                                bottom: 1),
                                            child: Text("123 456 7895",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium16Gray900))
                                      ]))),
                              Container(
                                  height: getVerticalSize(5.00),
                                  width: size.width,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray200,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(2.00)))),
                              Container(
                                  height: getVerticalSize(418.00),
                                  width: size.width,
                                  margin: getMargin(top: 19),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                width: size.width,
                                                margin: getMargin(top: 36),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapViewsTables(
                                                                context);
                                                          },
                                                          child: Container(
                                                              width: size.width,
                                                              padding:
                                                                  getPadding(
                                                                      left: 60,
                                                                      top: 17,
                                                                      right: 60,
                                                                      bottom:
                                                                          17),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700,
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                1),
                                                                        child: Text(
                                                                            "Cryptocurrency",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular16Black900))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300)),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapViewsTables1(
                                                                context);
                                                          },
                                                          child: Container(
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  top: 77),
                                                              padding:
                                                                  getPadding(
                                                                      left: 60,
                                                                      top: 17,
                                                                      right: 60,
                                                                      bottom:
                                                                          17),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700,
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "Credit & Debit Card",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular16Black900))
                                                                  ]))),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300)),
                                                      Container(
                                                          width: size.width,
                                                          margin:
                                                              getMargin(top: 2),
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
                                                                    height:
                                                                        getVerticalSize(
                                                                            5.00),
                                                                    width: getHorizontalSize(
                                                                        48.00),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            2.00)),
                                                                    margin: getMargin(
                                                                        bottom:
                                                                            3))
                                                              ])),
                                                      Container(
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 52),
                                                          padding: getPadding(
                                                              left: 60,
                                                              top: 18,
                                                              right: 60,
                                                              bottom: 18),
                                                          decoration:
                                                              AppDecoration
                                                                  .fillWhiteA700,
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text("PayPal",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16Black900)
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    left: 60,
                                                    top: 18,
                                                    right: 60,
                                                    bottom: 18),
                                                decoration:
                                                    AppDecoration.fillWhiteA700,
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                          "M.E.A.T.S Wallet (\$60.00)",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Black900)
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20, right: 20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Payment Method",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium16Gray900),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 30),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgVolume,
                                                                    height:
                                                                        getSize(
                                                                            29.00),
                                                                    width: getSize(
                                                                        29.00)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowrightBlueGray30012x6,
                                                                    height:
                                                                        getVerticalSize(
                                                                            12.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        top: 9,
                                                                        bottom:
                                                                            8))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 48),
                                                          child: Text("Cards",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoBold18)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 33),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgSave,
                                                                    height:
                                                                        getSize(
                                                                            30.00),
                                                                    width: getSize(
                                                                        30.00)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowrightBlueGray30012x6,
                                                                    height:
                                                                        getVerticalSize(
                                                                            12.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        bottom:
                                                                            8))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 45),
                                                          child: Text("Wallets",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoBold18)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 6, top: 28),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgComputer,
                                                                    height:
                                                                        getVerticalSize(
                                                                            25.00),
                                                                    width: getHorizontalSize(
                                                                        23.00)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowrightBlueGray30012x6,
                                                                    height:
                                                                        getVerticalSize(
                                                                            12.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        bottom:
                                                                            3))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5, top: 30),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgFile,
                                                                    height:
                                                                        getSize(
                                                                            26.00),
                                                                    width: getSize(
                                                                        26.00)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowrightBlueGray30012x6,
                                                                    height:
                                                                        getVerticalSize(
                                                                            12.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        top: 10,
                                                                        bottom:
                                                                            4))
                                                              ]))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapViewsTables(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cryptocyrrencyScreen);
  }

  onTapViewsTables1(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.checkoutIfAnyCardsAddedScreen);
  }

  onTapArrowleft12(BuildContext context) {
    Navigator.pop(context);
  }
}
