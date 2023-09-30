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
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';
import '../../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EstablishmentLocationDetailsScreen extends StatelessWidget {
  TextEditingController barsSearchBarsController = TextEditingController();

  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController controlsTextTwoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(48.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 12, bottom: 12),
                    onTap: () => onTapArrowleft16(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: " Establishment  Details"),
                styleType: Style.bgFillWhiteA700),
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
                                  width: getHorizontalSize(314.00),
                                  child: Text("Create Your Establishment Page",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtInterBold24)),
                              Container(
                                  height: getVerticalSize(43.00),
                                  width: size.width,
                                  margin: getMargin(top: 34),
                                  child: Stack(
                                      alignment: Alignment.topRight,
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
                                                              "Establishment Details",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16Gray900)),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 21),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300))
                                                    ]))),
                                        CustomIconButton(
                                            height: 24,
                                            width: 24,
                                            margin: getMargin(right: 20),
                                            shape:
                                                IconButtonShape.CircleBorder12,
                                            alignment: Alignment.topRight,
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmarkWhiteA700))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 23, top: 19, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(" Establishment Location",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoBold16Gray90001),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowdown,
                                            height: getVerticalSize(6.00),
                                            width: getHorizontalSize(12.00),
                                            margin:
                                                getMargin(top: 7, bottom: 5))
                                      ])),
                              CustomSearchView(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: barsSearchBarsController,
                                  hintText: "Search Location",
                                  margin: getMargin(top: 21),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 8,
                                          top: 10,
                                          right: 12,
                                          bottom: 10),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(36.00)),
                                  suffix: Padding(
                                      padding: EdgeInsets.only(
                                          right: getHorizontalSize(15.00)),
                                      child: IconButton(
                                          onPressed: () {
                                            barsSearchBarsController.clear;
                                          },
                                          icon: Icon(Icons.clear,
                                              color: Colors.grey.shade600))),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(36.00))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 20),
                                      child: Row(children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgLocationGray90001,
                                            height: getSize(24.00),
                                            width: getSize(24.00)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtUseCurrentLocation(
                                                  context);
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 9, top: 1, bottom: 3),
                                                child: Text(
                                                    "Use Current Location",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16Gray900)))
                                      ]))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 28),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextController,
                                  hintText: "Address",
                                  margin: getMargin(top: 19)),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextOneController,
                                  hintText: "Postcode",
                                  margin: getMargin(top: 20)),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextTwoController,
                                  hintText: "City",
                                  margin: getMargin(top: 20),
                                  textInputAction: TextInputAction.done),
                              CustomButton(
                                  height: 48,
                                  width: 335,
                                  text: "Save & Next",
                                  margin: getMargin(top: 20),
                                  onTap: () => onTapSavenext(context)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 30),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Container(
                                  height: getVerticalSize(69.00),
                                  width: size.width,
                                  margin: getMargin(top: 21),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
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
                                                              left: 21,
                                                              right: 20),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "Establishment Timing",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular16Black900),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowright12x6,
                                                                    height:
                                                                        getVerticalSize(
                                                                            12.00),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            6.00),
                                                                    margin: getMargin(
                                                                        top: 2,
                                                                        bottom:
                                                                            4))
                                                              ])),
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00),
                                                          width: size.width,
                                                          margin: getMargin(
                                                              top: 17),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 48,
                                                    right: 20),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: Text(
                                                              "Establishment Menu Setup",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular16Black900)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright12x6,
                                                          height:
                                                              getVerticalSize(
                                                                  12.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  6.00),
                                                          margin:
                                                              getMargin(top: 9))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: size.width,
                                                margin: getMargin(bottom: 9),
                                                padding: getPadding(
                                                    left: 163,
                                                    top: 8,
                                                    right: 163,
                                                    bottom: 8),
                                                decoration:AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgRectangle,
                                                          height:
                                                              getVerticalSize(
                                                                  5.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      2.00)),
                                                          margin: getMargin(
                                                              bottom: 3))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapTxtUseCurrentLocation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.useCurrentLocationScreen);
  }

  onTapSavenext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.establishmentLocationDetails1Screen);
  }

  onTapArrowleft16(BuildContext context) {
    Navigator.pop(context);
  }
}
