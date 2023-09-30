import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';
import '../../../widgets/custom_switch.dart';
import '../add_to_cart_screen/widgets/listrectangle4324_item_widget.dart';
import '../browse_menu_dialog/browse_menu_dialog.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddToCartScreen extends StatelessWidget {
  TextEditingController barsSearchBarsController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                              padding: getPadding(left: 18, top: 8, right: 20),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () => onTapArrowleft73(context)),
                                AppbarSubtitle(
                                    text: "La Pino’s Pizza",
                                    margin: getMargin(left: 14, bottom: 1)),
                                AppbarImage(
                                    height: getVerticalSize(20.00),
                                    width: getHorizontalSize(16.00),
                                    svgPath: ImageConstant.imgUpload,
                                    margin:
                                        getMargin(left: 164, top: 2, bottom: 2))
                              ])),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 14),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300))
                        ])),
                styleType: Style.bgFillWhiteA700_1),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(1704.00),
                        width: size.width,
                        margin: getMargin(top: 20),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: size.width,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(240.00),
                                                width:
                                                    getHorizontalSize(355.00),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  top: 56),
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 8,
                                                                      right: 16,
                                                                      bottom:
                                                                          8),
                                                              decoration: AppDecoration
                                                                  .outlineGray3003
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .customBorderLR20),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
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
                                                                            "Breakfast",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular12Black900))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      335.00),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    CustomSearchView(
                                                                        width:
                                                                            335,
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        controller:
                                                                            barsSearchBarsController,
                                                                        hintText:
                                                                            "Search with Menu",
                                                                        prefix: Container(
                                                                            margin: getMargin(
                                                                                left: 8,
                                                                                top: 10,
                                                                                right: 12,
                                                                                bottom: 10),
                                                                            child: CustomImageView(svgPath: ImageConstant.imgSearch)),
                                                                        prefixConstraints: BoxConstraints(maxHeight: getVerticalSize(36.00)),
                                                                        suffix: Padding(
                                                                            padding: EdgeInsets.only(right: getHorizontalSize(15.00)),
                                                                            child: IconButton(
                                                                                onPressed: () {
                                                                                  barsSearchBarsController.clear;
                                                                                },
                                                                                icon: Icon(Icons.clear, color: Colors.grey.shade600))),
                                                                        suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36.00))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        child: Padding(
                                                                            padding: getPadding(top: 21),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgVectorBlueGray300, height: getVerticalSize(3.00), width: getHorizontalSize(6.00), margin: getMargin(top: 13, bottom: 16)),
                                                                              Padding(padding: getPadding(left: 162, top: 8, bottom: 8), child: Text("Ver Only", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular12Black900)),
                                                                              CustomSwitch(margin: getMargin(left: 8), value: true, onChanged: (value) {})
                                                                            ]))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                21),
                                                                        child: Text(
                                                                            "Pizzas (33)",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoBold16Gray900)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                14),
                                                                        child: Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text("Classic Veg (5)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray60001),
                                                                              CustomImageView(svgPath: ImageConstant.imgArrowdownBlueGray300, height: getVerticalSize(6.00), width: getHorizontalSize(12.00), margin: getMargin(left: 216, top: 6, bottom: 6))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            335.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                18),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray300,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(1.00)))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                18),
                                                                        child: Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text("Simple Veg (4)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray60001),
                                                                              CustomImageView(svgPath: ImageConstant.imgArrowdownBlueGray300, height: getVerticalSize(6.00), width: getHorizontalSize(12.00), margin: getMargin(left: 219, top: 6, bottom: 6))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: getHorizontalSize(
                                                                            335.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                18),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray300,
                                                                            borderRadius: BorderRadius.circular(getHorizontalSize(1.00))))
                                                                  ])))
                                                    ]))),
                                        Container(
                                            height: getVerticalSize(859.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 18),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  32.00),
                                                          width: getHorizontalSize(
                                                              83.00),
                                                          margin: getMargin(
                                                              top: 324),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          16.00)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  width: getHorizontalSize(
                                                                      1.00))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  32.00),
                                                          width: getHorizontalSize(
                                                              83.00),
                                                          margin: getMargin(
                                                              bottom: 359),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          16.00)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  width: getHorizontalSize(
                                                                      1.00))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  32.00),
                                                          width: getHorizontalSize(
                                                              83.00),
                                                          margin: getMargin(
                                                              bottom: 215),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          16.00)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  width: getHorizontalSize(
                                                                      1.00))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  32.00),
                                                          width: getHorizontalSize(
                                                              83.00),
                                                          margin: getMargin(
                                                              bottom: 71),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .gray300,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          16.00)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  width: getHorizontalSize(
                                                                      1.00))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  32.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  83.00),
                                                          margin: getMargin(
                                                              top: 36),
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius
                                                                  .circular(
                                                                      getHorizontalSize(
                                                                          16.00)),
                                                              border: Border.all(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  width: getHorizontalSize(
                                                                      1.00))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Card(
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          elevation: 0,
                                                          margin:
                                                              EdgeInsets.all(0),
                                                          shape: RoundedRectangleBorder(
                                                              side: BorderSide(
                                                                  color: ColorConstant
                                                                      .gray300,
                                                                  width: getHorizontalSize(
                                                                      1.00)),
                                                              borderRadius: BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      60.00))),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      859.00),
                                                              width: getHorizontalSize(
                                                                  335.00),
                                                              decoration: AppDecoration
                                                                  .outlineGray3002
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder62),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(32.00),
                                                                            width: getHorizontalSize(83.00),
                                                                            margin: getMargin(top: 180),
                                                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(16.00)), border: Border.all(color: ColorConstant.gray300, width: getHorizontalSize(1.00))))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: Container(
                                                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(60.00))),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                Text("Exotic Veg (10)", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular16Gray60001),
                                                                                CustomImageView(svgPath: ImageConstant.imgArrowdownBlueGray300, height: getVerticalSize(6.00), width: getHorizontalSize(12.00), margin: getMargin(top: 6, bottom: 6))
                                                                              ]),
                                                                              Padding(
                                                                                  padding: getPadding(top: 18, right: 5),
                                                                                  child: ListView.separated(
                                                                                      physics: NeverScrollableScrollPhysics(),
                                                                                      shrinkWrap: true,
                                                                                      separatorBuilder: (context, index) {
                                                                                        return Container(height: getVerticalSize(1.00), width: getHorizontalSize(275.00), decoration: BoxDecoration(color: ColorConstant.gray300, borderRadius: BorderRadius.circular(getHorizontalSize(1.00))));
                                                                                      },
                                                                                      itemCount: 6,
                                                                                      itemBuilder: (context, index) {
                                                                                        return Listrectangle4324ItemWidget();
                                                                                      }))
                                                                            ])))
                                                                  ]))))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Specialty Veg (14)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5))
                                                ])),
                                        Container(
                                            width: size.width,
                                            margin: getMargin(top: 25),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(5.00),
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      2.00)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 18),
                                                      child: Text(
                                                          "Garlic Bread (06)",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoBold16Gray900))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 14, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Garlic Bread (4)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Garlic Sticks (2)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5))
                                                ])),
                                        Container(
                                            width: size.width,
                                            margin: getMargin(top: 20),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(5.00),
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray200,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      2.00)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 20, top: 18),
                                                      child: Text("Sides (11)",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoBold16Gray900))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 14, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Macaroni & Cheese (2)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Pasta Veg (4)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Quesadillas (2)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 20, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Taco’s (3)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5))
                                                ])),
                                        Container(
                                            height: getVerticalSize(5.00),
                                            width: size.width,
                                            margin: getMargin(top: 25),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray200,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            2.00)))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20, top: 18),
                                                child: Text(
                                                    "Dessert  & Beverages (11)",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoBold16Gray900))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 14, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Dessert (1)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 5, bottom: 5))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  width: size.width,
                                  margin: getMargin(top: 498),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomButton(
                                            height: 32,
                                            width: 130,
                                            text: "Browse Menu",
                                            variant:
                                                ButtonVariant.FillGray90001,
                                            onTap: () =>
                                                onTapBrowsemenu(context)),
                                        Container(
                                            width: size.width,
                                            margin:
                                                getMargin(top: 23, bottom: 80),
                                            padding: getPadding(
                                                left: 20,
                                                top: 10,
                                                right: 20,
                                                bottom: 10),
                                            decoration:
                                                AppDecoration.fillIndigo900,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 7,
                                                          top: 10,
                                                          bottom: 4),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text("2 Items",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular10),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 3),
                                                                child: Row(
                                                                    children: [
                                                                      Text(
                                                                          "\$ 12.00",
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .left,
                                                                          style:
                                                                              AppStyle.txtRobotoMedium16WhiteA700),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  5,
                                                                              top:
                                                                                  3,
                                                                              bottom:
                                                                                  3),
                                                                          child: Text(
                                                                              "+ Taxes",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoRegular10))
                                                                    ]))
                                                          ])),
                                                  CustomButton(
                                                      height: 48,
                                                      width: 175,
                                                      text: "View Cart",
                                                      margin: getMargin(top: 1),
                                                      variant: ButtonVariant
                                                          .FillWhiteA700,
                                                      shape: ButtonShape
                                                          .CircleBorder24,
                                                      padding: ButtonPadding
                                                          .PaddingAll13,
                                                      fontStyle: ButtonFontStyle
                                                          .RobotoBold16Gray90001)
                                                ]))
                                      ])))
                        ])))),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {})
        ));
  }

/*
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeGroceryPage:
        return HomeGroceryPage();
      case AppRoutes.insightsPage:
        return InsightsPage();
      case AppRoutes.socialPostMenuTabContainerPage:
        return SocialPostMenuTabContainerPage();
      case AppRoutes.cartPage:
        return CartPage();
      case AppRoutes.myProfilePage:
        return MyProfilePage();
      default:
        return HomeGroceryPage();
    }
  }
*/

  onTapBrowsemenu(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: BrowseMenuDialog(),
              backgroundColor: Colors.transparent,
            ));
  }

  onTapArrowleft73(BuildContext context) {
    Navigator.pop(context);
  }
}
