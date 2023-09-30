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
import '../../../widgets/custom_checkbox.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';
import '../../../widgets/custom_switch.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CustomizeScreen extends StatelessWidget {
  TextEditingController barsSearchBarsController = TextEditingController();

  bool checkbox = false;

  bool checkbox1 = false;

  bool checkbox2 = false;

  @override Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            // resizeToAvoidBottomInset: false,
            // appBar: CustomAppBar(height: getVerticalSize(24.00),
            //     leadingWidth: 42,
            //     leading: AppbarImage(height: getSize(24.00),
            //         width: getSize(24.00),
            //         svgPath: ImageConstant.imgArrowleft,
            //         margin: getMargin(left: 18),
            //         onTap: () => onTapArrowleft72(context)),
            //     title: AppbarSubtitle(
            //         text: "La Pino’s Pizza", margin: getMargin(left: 14)),
            //     actions: [
            //       AppbarImage(height: getVerticalSize(20.00),
            //           width: getHorizontalSize(16.00),
            //           svgPath: ImageConstant.imgUpload,
            //           margin: getMargin(left: 20, top: 2, right: 20, bottom: 2))
            //     ]),
            body: SizedBox(width: size.width,
                child: SingleChildScrollView(child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(alignment: Alignment.topCenter,
                        children: [

                          // Align(alignment: Alignment.topCenter,
                          //     child: Container(height: getVerticalSize(1.00),
                          //         width: size.width,
                          //         margin: getMargin(top: 46),
                          //         decoration: BoxDecoration(
                          //             color: ColorConstant.gray300))),
                          // Align(alignment: Alignment.topCenter,
                          //     child: Padding(padding: getPadding(
                          //         left: 20, top: 176, right: 20),
                          //         child: Column(mainAxisSize: MainAxisSize.min,
                          //             crossAxisAlignment: CrossAxisAlignment
                          //                 .start,
                          //             mainAxisAlignment: MainAxisAlignment
                          //                 .start,
                          //             children: [
                          //               Text("Pizzas (33)",
                          //                   overflow: TextOverflow.ellipsis,
                          //                   textAlign: TextAlign.left,
                          //                   style: AppStyle
                          //                       .txtRobotoBold16Gray900),
                          //               Padding(padding: getPadding(top: 14),
                          //                   child: Row(
                          //                       mainAxisAlignment: MainAxisAlignment
                          //                           .spaceBetween,
                          //                       crossAxisAlignment: CrossAxisAlignment
                          //                           .start,
                          //                       children: [
                          //                         Text("Classic Veg (5)",
                          //                             overflow: TextOverflow
                          //                                 .ellipsis,
                          //                             textAlign: TextAlign.left,
                          //                             style: AppStyle
                          //                                 .txtRobotoRegular16Gray60001),
                          //                         CustomImageView(
                          //                             svgPath: ImageConstant
                          //                                 .imgArrowdownBlueGray300,
                          //                             height: getVerticalSize(
                          //                                 6.00),
                          //                             width: getHorizontalSize(
                          //                                 12.00),
                          //                             margin: getMargin(
                          //                                 top: 6, bottom: 6))
                          //                       ])),
                          //               Container(height: getVerticalSize(1.00),
                          //                   width: getHorizontalSize(335.00),
                          //                   margin: getMargin(top: 18),
                          //                   decoration: BoxDecoration(
                          //                       color: ColorConstant.gray300,
                          //                       borderRadius: BorderRadius
                          //                           .circular(
                          //                           getHorizontalSize(1.00)))),
                          //               Padding(padding: getPadding(top: 18),
                          //                   child: Row(
                          //                       mainAxisAlignment: MainAxisAlignment
                          //                           .spaceBetween,
                          //                       crossAxisAlignment: CrossAxisAlignment
                          //                           .start,
                          //                       children: [
                          //                         Text("Simple Veg (4)",
                          //                             overflow: TextOverflow
                          //                                 .ellipsis,
                          //                             textAlign: TextAlign.left,
                          //                             style: AppStyle
                          //                                 .txtRobotoRegular16Gray60001),
                          //                         CustomImageView(
                          //                             svgPath: ImageConstant
                          //                                 .imgArrowdownBlueGray300,
                          //                             height: getVerticalSize(
                          //                                 6.00),
                          //                             width: getHorizontalSize(
                          //                                 12.00),
                          //                             margin: getMargin(
                          //                                 top: 6, bottom: 6))
                          //                       ])),
                          //               Container(height: getVerticalSize(1.00),
                          //                   width: getHorizontalSize(335.00),
                          //                   margin: getMargin(top: 18),
                          //                   decoration: BoxDecoration(
                          //                       color: ColorConstant.gray300,
                          //                       borderRadius: BorderRadius
                          //                           .circular(
                          //                           getHorizontalSize(1.00))))
                          //             ]))),
                          // CustomButton(height: 32,
                          //     width: 95,
                          //     text: "Breakfast",
                          //     margin: getMargin(top: 122),
                          //     variant: ButtonVariant.OutlineGray300_1,
                          //     shape: ButtonShape.CustomBorderLR20,
                          //     padding: ButtonPadding.PaddingT8,
                          //     fontStyle: ButtonFontStyle.RobotoRegular12,
                          //     suffixWidget: Container(
                          //         margin: getMargin(left: 10),
                          //         child: CustomImageView(svgPath: ImageConstant
                          //             .imgVectorBlueGray300)),
                          //     alignment: Alignment.topLeft),
                          // Align(alignment: Alignment.topRight,
                          //     child: Padding(
                          //         padding: getPadding(top: 123, right: 20),
                          //         child: Row(
                          //             mainAxisAlignment: MainAxisAlignment.end,
                          //             mainAxisSize: MainAxisSize.min,
                          //             children: [
                          //               Padding(padding: getPadding(
                          //                   top: 8, bottom: 8),
                          //                   child: Text("Ver Only",
                          //                       overflow: TextOverflow.ellipsis,
                          //                       textAlign: TextAlign.left,
                          //                       style: AppStyle
                          //                           .txtRobotoRegular12Black900)),
                          //               CustomSwitch(margin: getMargin(left: 8),
                          //                   value: true,
                          //                   onChanged: (value) {})
                          //             ]))),
                          // CustomSearchView(width: 335,
                          //     focusNode: FocusNode(),
                          //     controller: barsSearchBarsController,
                          //     hintText: "Search with Menu",
                          //     margin: getMargin(top: 66),
                          //     alignment: Alignment.topCenter,
                          //     prefix: Container(margin: getMargin(
                          //         left: 8, top: 10, right: 12, bottom: 10),
                          //         child: CustomImageView(
                          //             svgPath: ImageConstant.imgSearch)),
                          //     prefixConstraints: BoxConstraints(
                          //         maxHeight: getVerticalSize(36.00)),
                          //     suffix: Padding(padding: EdgeInsets.only(
                          //         right: getHorizontalSize(15.00)),
                          //         child: IconButton(onPressed: () {
                          //           barsSearchBarsController.clear;
                          //         }, icon: Icon(Icons.clear, color: Colors.grey
                          //             .shade600))),
                          //     suffixConstraints: BoxConstraints(
                          //         maxHeight: getVerticalSize(36.00))),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(top: 20,left: 300),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent, // Background color
                                      ),
                                      onPressed: () {

                                    // Navigator.popUntil(context, ModalRoute.withName('/'));

                                     Navigator.pop(context);
                                  }, child: const Icon(Icons.close,color: Colors.white,)),
                                ),
                                Align(alignment: Alignment.center,
                                    child: Container(width: size.width,
                                        decoration: AppDecoration.fillGray900ab,
                                        child: Column(mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .end,
                                            mainAxisAlignment: MainAxisAlignment
                                                .start,
                                            children: [
                                              Container(height: getVerticalSize(
                                                1271.00),
                                                width: size.width,
                                                margin: getMargin(top: 245),
                                                child: Stack(
                                                    alignment: Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment.center,
                                                          child: Container(
                                                              width: size.width,
                                                              padding: getPadding(
                                                                  top: 26,
                                                                  bottom: 26),
                                                              decoration: AppDecoration
                                                                  .fillWhiteA700
                                                                  .copyWith(
                                                                  borderRadius: BorderRadiusStyle
                                                                      .customBorderTL16),
                                                              child: Column(
                                                                  mainAxisSize: MainAxisSize
                                                                      .min,
                                                                  crossAxisAlignment: CrossAxisAlignment
                                                                      .start,
                                                                  mainAxisAlignment: MainAxisAlignment
                                                                      .end,
                                                                  children: [
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            15.00),
                                                                        margin: getMargin(
                                                                            left: 20,
                                                                            top: 172),
                                                                        padding: getPadding(
                                                                            all: 4),
                                                                        decoration: AppDecoration
                                                                            .outlineTeal3001
                                                                            .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder2),
                                                                        child: Column(
                                                                            mainAxisSize: MainAxisSize
                                                                                .min,
                                                                            mainAxisAlignment: MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Container(
                                                                                  height: getSize(
                                                                                      7.00),
                                                                                  width: getSize(
                                                                                      7.00),
                                                                                  decoration: BoxDecoration(
                                                                                      color: ColorConstant
                                                                                          .teal300,
                                                                                      borderRadius: BorderRadius
                                                                                          .circular(
                                                                                          getHorizontalSize(
                                                                                              3.00))))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left: 20,
                                                                            top: 0),
                                                                        child: Text(
                                                                            "Cheesy-7 Pizza",
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtRobotoMedium14Gray900)),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            308.00),
                                                                        margin: getMargin(
                                                                            left: 20,
                                                                            top: 3),
                                                                        child: Text(
                                                                            "An Exotic Combination Of White Mozzarella, Cream, White Cheese,, Monterey Jack, Cream Orange, Colby And Orange Cheddar Cheese",
                                                                            maxLines: null,
                                                                            textAlign: TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtRobotoRegular12Bluegray300)),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: size
                                                                            .width,
                                                                        margin: getMargin(
                                                                            top: 20),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .gray300,
                                                                            borderRadius: BorderRadius
                                                                                .circular(
                                                                                getHorizontalSize(
                                                                                    1.00)))),
                                                                    Align(
                                                                        alignment: Alignment
                                                                            .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                top: 17),
                                                                            child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment
                                                                                    .center,
                                                                                crossAxisAlignment: CrossAxisAlignment
                                                                                    .start,
                                                                                children: [
                                                                                  Padding(
                                                                                      padding: getPadding(
                                                                                          bottom: 58),
                                                                                      child: Column(
                                                                                          crossAxisAlignment: CrossAxisAlignment
                                                                                              .start,
                                                                                          mainAxisAlignment: MainAxisAlignment
                                                                                              .start,
                                                                                          children: [
                                                                                            Text(
                                                                                                "Choose Customization",
                                                                                                overflow: TextOverflow
                                                                                                    .ellipsis,
                                                                                                textAlign: TextAlign
                                                                                                    .left,
                                                                                                style: AppStyle
                                                                                                    .txtRobotoMedium16Gray900),
                                                                                            Padding(
                                                                                                padding: getPadding(
                                                                                                    top: 5),
                                                                                                child: Text(
                                                                                                    "Please select any 1 option",
                                                                                                    overflow: TextOverflow
                                                                                                        .ellipsis,
                                                                                                    textAlign: TextAlign
                                                                                                        .left,
                                                                                                    style: AppStyle
                                                                                                        .txtRobotoRegular12Bluegray300)),
                                                                                            Padding(
                                                                                                padding: getPadding(
                                                                                                    top: 22),
                                                                                                child: Row(
                                                                                                    children: [
                                                                                                      Container(
                                                                                                          width: getHorizontalSize(
                                                                                                              108.00),
                                                                                                          child: Text(
                                                                                                              "Personal Giant Slice\nRegular (Serves 1)\nMedium (Serves 2)\nLarge (Serves 4) The Giant (Serves 8)",
                                                                                                              maxLines: null,
                                                                                                              textAlign: TextAlign
                                                                                                                  .left,
                                                                                                              style: AppStyle
                                                                                                                  .txtRobotoRegular12)),
                                                                                                      Container(
                                                                                                          width: getHorizontalSize(
                                                                                                              30.00),
                                                                                                          margin: getMargin(
                                                                                                              left: 168),
                                                                                                          child: Text(
                                                                                                              "\$4.5\n\$6.0\n\$7.0\n\$8.0\n\$12.0",
                                                                                                              maxLines: null,
                                                                                                              textAlign: TextAlign
                                                                                                                  .left,
                                                                                                              style: AppStyle
                                                                                                                  .txtRobotoRegular12))
                                                                                                    ]))
                                                                                          ])),
                                                                                  Padding(
                                                                                      padding: getPadding(
                                                                                          left: 3,
                                                                                          top: 60),
                                                                                      child: Column(
                                                                                          mainAxisAlignment: MainAxisAlignment
                                                                                              .start,
                                                                                          children: [
                                                                                            Container(
                                                                                                height: getSize(
                                                                                                    24.00),
                                                                                                width: getSize(
                                                                                                    24.00),
                                                                                                decoration: BoxDecoration(
                                                                                                    color: ColorConstant
                                                                                                        .whiteA700,
                                                                                                    borderRadius: BorderRadius
                                                                                                        .circular(
                                                                                                        getHorizontalSize(
                                                                                                            12.00)),
                                                                                                    border: Border
                                                                                                        .all(
                                                                                                        color: ColorConstant
                                                                                                            .gray300,
                                                                                                        width: getHorizontalSize(
                                                                                                            1.00)))),
                                                                                            Container(
                                                                                                width: getHorizontalSize(
                                                                                                    24.00),
                                                                                                margin: getMargin(
                                                                                                    top: 16),
                                                                                                padding: getPadding(
                                                                                                    all: 8),
                                                                                                decoration: AppDecoration
                                                                                                    .fillGray90090
                                                                                                    .copyWith(
                                                                                                    borderRadius: BorderRadiusStyle
                                                                                                        .roundedBorder16),
                                                                                                child: Column(
                                                                                                    mainAxisSize: MainAxisSize
                                                                                                        .min,
                                                                                                    mainAxisAlignment: MainAxisAlignment
                                                                                                        .start,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                          height: getSize(
                                                                                                              8.00),
                                                                                                          width: getSize(
                                                                                                              8.00),
                                                                                                          decoration: BoxDecoration(
                                                                                                              color: ColorConstant
                                                                                                                  .whiteA700,
                                                                                                              borderRadius: BorderRadius
                                                                                                                  .circular(
                                                                                                                  getHorizontalSize(
                                                                                                                      4.00))))
                                                                                                    ])),
                                                                                            Container(
                                                                                                height: getSize(
                                                                                                    24.00),
                                                                                                width: getSize(
                                                                                                    24.00),
                                                                                                margin: getMargin(
                                                                                                    top: 16),
                                                                                                decoration: BoxDecoration(
                                                                                                    color: ColorConstant
                                                                                                        .whiteA700,
                                                                                                    borderRadius: BorderRadius
                                                                                                        .circular(
                                                                                                        getHorizontalSize(
                                                                                                            12.00)),
                                                                                                    border: Border
                                                                                                        .all(
                                                                                                        color: ColorConstant
                                                                                                            .gray300,
                                                                                                        width: getHorizontalSize(
                                                                                                            1.00)))),
                                                                                            Container(
                                                                                                height: getSize(
                                                                                                    24.00),
                                                                                                width: getSize(
                                                                                                    24.00),
                                                                                                margin: getMargin(
                                                                                                    top: 16),
                                                                                                decoration: BoxDecoration(
                                                                                                    color: ColorConstant
                                                                                                        .whiteA700,
                                                                                                    borderRadius: BorderRadius
                                                                                                        .circular(
                                                                                                        getHorizontalSize(
                                                                                                            12.00)),
                                                                                                    border: Border
                                                                                                        .all(
                                                                                                        color: ColorConstant
                                                                                                            .gray300,
                                                                                                        width: getHorizontalSize(
                                                                                                            1.00)))),
                                                                                            Container(
                                                                                                height: getSize(
                                                                                                    24.00),
                                                                                                width: getSize(
                                                                                                    24.00),
                                                                                                margin: getMargin(
                                                                                                    top: 16),
                                                                                                decoration: BoxDecoration(
                                                                                                    color: ColorConstant
                                                                                                        .whiteA700,
                                                                                                    borderRadius: BorderRadius
                                                                                                        .circular(
                                                                                                        getHorizontalSize(
                                                                                                            12.00)),
                                                                                                    border: Border
                                                                                                        .all(
                                                                                                        color: ColorConstant
                                                                                                            .gray300,
                                                                                                        width: getHorizontalSize(
                                                                                                            1.00))))
                                                                                          ]))
                                                                                ]))),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: size
                                                                            .width,
                                                                        margin: getMargin(
                                                                            top: 27),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .gray300,
                                                                            borderRadius: BorderRadius
                                                                                .circular(
                                                                                getHorizontalSize(
                                                                                    1.00)))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left: 20,
                                                                            top: 20),
                                                                        child: Text(
                                                                            "Toppings-Veg (Regular)",
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtRobotoMedium16Gray900)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left: 20,
                                                                            top: 5),
                                                                        child: Text(
                                                                            "Please select any 1 option",
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtRobotoRegular12Bluegray300)),
                                                                    Align(
                                                                        alignment: Alignment
                                                                            .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 20,
                                                                                top: 12,
                                                                                right: 20),
                                                                            child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment
                                                                                    .spaceBetween,
                                                                                children: [
                                                                                  Container(
                                                                                      width: getHorizontalSize(
                                                                                          56.00),
                                                                                      child: Text(
                                                                                          "Onions\nCapsicum\nPaneer\nOlives\nJalapenos",
                                                                                          maxLines: null,
                                                                                          textAlign: TextAlign
                                                                                              .left,
                                                                                          style: AppStyle
                                                                                              .txtRobotoRegular12)),
                                                                                  Container(
                                                                                      height: getVerticalSize(
                                                                                          200.00),
                                                                                      width: getHorizontalSize(
                                                                                          58.00),
                                                                                      child: Stack(
                                                                                          alignment: Alignment
                                                                                              .center,
                                                                                          children: [
                                                                                            CustomIconButton(
                                                                                                height: 24,
                                                                                                width: 24,
                                                                                                margin: getMargin(
                                                                                                    top: 48),
                                                                                                alignment: Alignment
                                                                                                    .topRight,
                                                                                                child: CustomImageView(
                                                                                                    svgPath: ImageConstant
                                                                                                        .imgCheckmark)),
                                                                                            Align(
                                                                                                alignment: Alignment
                                                                                                    .center,
                                                                                                child: CustomCheckbox(
                                                                                                    alignment: Alignment
                                                                                                        .center,
                                                                                                    text: "1.0\n1.0\n1.0\n1.0\n1.0",
                                                                                                    iconSize: 16,
                                                                                                    value: checkbox,
                                                                                                    onChange: (
                                                                                                        value) {
                                                                                                      checkbox =
                                                                                                          value;
                                                                                                    })),
                                                                                            Align(
                                                                                                alignment: Alignment
                                                                                                    .topRight,
                                                                                                child: Container(
                                                                                                    height: getSize(
                                                                                                        24.00),
                                                                                                    width: getSize(
                                                                                                        24.00),
                                                                                                    margin: getMargin(
                                                                                                        top: 9),
                                                                                                    decoration: BoxDecoration(
                                                                                                        color: ColorConstant
                                                                                                            .whiteA700,
                                                                                                        borderRadius: BorderRadius
                                                                                                            .circular(
                                                                                                            getHorizontalSize(
                                                                                                                4.00)),
                                                                                                        border: Border
                                                                                                            .all(
                                                                                                            color: ColorConstant
                                                                                                                .gray300,
                                                                                                            width: getHorizontalSize(
                                                                                                                1.00))))),
                                                                                            Align(
                                                                                                alignment: Alignment
                                                                                                    .bottomRight,
                                                                                                child: Container(
                                                                                                    height: getSize(
                                                                                                        24.00),
                                                                                                    width: getSize(
                                                                                                        24.00),
                                                                                                    margin: getMargin(
                                                                                                        bottom: 50),
                                                                                                    decoration: BoxDecoration(
                                                                                                        color: ColorConstant
                                                                                                            .whiteA700,
                                                                                                        borderRadius: BorderRadius
                                                                                                            .circular(
                                                                                                            getHorizontalSize(
                                                                                                                4.00)),
                                                                                                        border: Border
                                                                                                            .all(
                                                                                                            color: ColorConstant
                                                                                                                .gray300,
                                                                                                            width: getHorizontalSize(
                                                                                                                1.00))))),
                                                                                            Align(
                                                                                                alignment: Alignment
                                                                                                    .bottomRight,
                                                                                                child: Container(
                                                                                                    height: getSize(
                                                                                                        24.00),
                                                                                                    width: getSize(
                                                                                                        24.00),
                                                                                                    margin: getMargin(
                                                                                                        bottom: 11),
                                                                                                    decoration: BoxDecoration(
                                                                                                        color: ColorConstant
                                                                                                            .whiteA700,
                                                                                                        borderRadius: BorderRadius
                                                                                                            .circular(
                                                                                                            getHorizontalSize(
                                                                                                                4.00)),
                                                                                                        border: Border
                                                                                                            .all(
                                                                                                            color: ColorConstant
                                                                                                                .gray300,
                                                                                                            width: getHorizontalSize(
                                                                                                                1.00)))))
                                                                                          ]))
                                                                                ]))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left: 20,
                                                                            top: 11),
                                                                        child: Row(
                                                                            children: [
                                                                              Text(
                                                                                  "6+ More",
                                                                                  overflow: TextOverflow
                                                                                      .ellipsis,
                                                                                  textAlign: TextAlign
                                                                                      .left,
                                                                                  style: AppStyle
                                                                                      .txtRobotoRegular12Gray90001),
                                                                              CustomImageView(
                                                                                  svgPath: ImageConstant
                                                                                      .imgVectorGray90001,
                                                                                  height: getVerticalSize(
                                                                                      4.00),
                                                                                  width: getHorizontalSize(
                                                                                      8.00),
                                                                                  margin: getMargin(
                                                                                      left: 6,
                                                                                      top: 7,
                                                                                      bottom: 5))
                                                                            ])),
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            1.00),
                                                                        width: size
                                                                            .width,
                                                                        margin: getMargin(
                                                                            top: 20),
                                                                        decoration: BoxDecoration(
                                                                            color: ColorConstant
                                                                                .gray300,
                                                                            borderRadius: BorderRadius
                                                                                .circular(
                                                                                getHorizontalSize(
                                                                                    1.00)))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left: 20,
                                                                            top: 20),
                                                                        child: Text(
                                                                            "Cheese & Dip (Regular)",
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtRobotoMedium16Gray900)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left: 20,
                                                                            top: 5),
                                                                        child: Text(
                                                                            "You can choose upto 4 options",
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .left,
                                                                            style: AppStyle
                                                                                .txtRobotoRegular12Bluegray300)),
                                                                    Align(
                                                                        alignment: Alignment
                                                                            .center,
                                                                        child: Container(
                                                                            height: getVerticalSize(
                                                                                200.00),
                                                                            width: getHorizontalSize(
                                                                                335.00),
                                                                            margin: getMargin(
                                                                                top: 12),
                                                                            child: Stack(
                                                                                alignment: Alignment
                                                                                    .center,
                                                                                children: [
                                                                                  CustomIconButton(
                                                                                      height: 24,
                                                                                      width: 24,
                                                                                      margin: getMargin(
                                                                                          top: 48),
                                                                                      alignment: Alignment
                                                                                          .topRight,
                                                                                      child: CustomImageView(
                                                                                          svgPath: ImageConstant
                                                                                              .imgCheckmark)),
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .center,
                                                                                      child: CustomCheckbox(
                                                                                          alignment: Alignment
                                                                                              .center,
                                                                                          text: "Extra cheese\nCheese Dip\nJalapeno Dip\nHot & Garlic Dip\nPeri Peri Dip",
                                                                                          iconSize: 24,
                                                                                          value: checkbox1,
                                                                                          onChange: (
                                                                                              value) {
                                                                                            checkbox1 =
                                                                                                value;
                                                                                          })),
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .centerRight,
                                                                                      child: CustomCheckbox(
                                                                                          alignment: Alignment
                                                                                              .centerRight,
                                                                                          text: "1.0\n1.0\n1.0\n1.0\n1.0",
                                                                                          iconSize: 16,
                                                                                          value: checkbox2,
                                                                                          onChange: (
                                                                                              value) {
                                                                                            checkbox2 =
                                                                                                value;
                                                                                          })),
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .topRight,
                                                                                      child: Container(
                                                                                          height: getSize(
                                                                                              24.00),
                                                                                          width: getSize(
                                                                                              24.00),
                                                                                          margin: getMargin(
                                                                                              top: 9),
                                                                                          decoration: BoxDecoration(
                                                                                              color: ColorConstant
                                                                                                  .whiteA700,
                                                                                              borderRadius: BorderRadius
                                                                                                  .circular(
                                                                                                  getHorizontalSize(
                                                                                                      4.00)),
                                                                                              border: Border
                                                                                                  .all(
                                                                                                  color: ColorConstant
                                                                                                      .gray300,
                                                                                                  width: getHorizontalSize(
                                                                                                      1.00))))),
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .bottomRight,
                                                                                      child: Container(
                                                                                          height: getSize(
                                                                                              24.00),
                                                                                          width: getSize(
                                                                                              24.00),
                                                                                          margin: getMargin(
                                                                                              bottom: 50),
                                                                                          decoration: BoxDecoration(
                                                                                              color: ColorConstant
                                                                                                  .whiteA700,
                                                                                              borderRadius: BorderRadius
                                                                                                  .circular(
                                                                                                  getHorizontalSize(
                                                                                                      4.00)),
                                                                                              border: Border
                                                                                                  .all(
                                                                                                  color: ColorConstant
                                                                                                      .gray300,
                                                                                                  width: getHorizontalSize(
                                                                                                      1.00))))),
                                                                                  Align(
                                                                                      alignment: Alignment
                                                                                          .bottomRight,
                                                                                      child: Container(
                                                                                          height: getSize(
                                                                                              24.00),
                                                                                          width: getSize(
                                                                                              24.00),
                                                                                          margin: getMargin(
                                                                                              bottom: 11),
                                                                                          decoration: BoxDecoration(
                                                                                              color: ColorConstant
                                                                                                  .whiteA700,
                                                                                              borderRadius: BorderRadius
                                                                                                  .circular(
                                                                                                  getHorizontalSize(
                                                                                                      4.00)),
                                                                                              border: Border
                                                                                                  .all(
                                                                                                  color: ColorConstant
                                                                                                      .gray300,
                                                                                                  width: getHorizontalSize(
                                                                                                      1.00)))))
                                                                                ]))),
                                                                    Align(
                                                                        alignment: Alignment
                                                                            .center,
                                                                        child: Padding(
                                                                            padding: getPadding(
                                                                                left: 20,
                                                                                top: 12,
                                                                                right: 20),
                                                                            child: Row(
                                                                                mainAxisAlignment: MainAxisAlignment
                                                                                    .spaceBetween,
                                                                                children: [
                                                                                  Container(
                                                                                      margin: getMargin(
                                                                                          top: 8,
                                                                                          bottom: 8),
                                                                                      padding: getPadding(
                                                                                          left: 5,
                                                                                          top: 6,
                                                                                          right: 5,
                                                                                          bottom: 6),
                                                                                      decoration: AppDecoration
                                                                                          .outlineGray3002
                                                                                          .copyWith(
                                                                                          borderRadius: BorderRadiusStyle
                                                                                              .txtCircleBorder16),
                                                                                      child: Row(
                                                                                          mainAxisAlignment: MainAxisAlignment
                                                                                              .center,
                                                                                          children: [
                                                                                            CustomImageView(
                                                                                                svgPath: ImageConstant
                                                                                                    .imgMenu,
                                                                                                height: getSize(
                                                                                                    19.00),
                                                                                                width: getSize(
                                                                                                    19.00),
                                                                                                radius: BorderRadius
                                                                                                    .circular(
                                                                                                    getHorizontalSize(
                                                                                                        9.00)),
                                                                                                margin: getMargin(
                                                                                                    top: 1)),
                                                                                            Padding(
                                                                                                padding: getPadding(
                                                                                                    left: 12,
                                                                                                    top: 2,
                                                                                                    bottom: 2),
                                                                                                child: Text(
                                                                                                    "1",
                                                                                                    overflow: TextOverflow
                                                                                                        .ellipsis,
                                                                                                    textAlign: TextAlign
                                                                                                        .center,
                                                                                                    style: AppStyle
                                                                                                        .txtRobotoMedium16Gray900)),
                                                                                            CustomImageView(
                                                                                                svgPath: ImageConstant
                                                                                                    .imgPlus,
                                                                                                height: getSize(
                                                                                                    19.00),
                                                                                                width: getSize(
                                                                                                    19.00),
                                                                                                radius: BorderRadius
                                                                                                    .circular(
                                                                                                    getHorizontalSize(
                                                                                                        9.00)),
                                                                                                margin: getMargin(
                                                                                                    left: 12,
                                                                                                    top: 1))
                                                                                          ])),
                                                                                  CustomButton(
                                                                                      height: 48,
                                                                                      width: 175,
                                                                                      text: "Add 8.0",
                                                                                      variant: ButtonVariant
                                                                                          .FillGray90001,
                                                                                      shape: ButtonShape
                                                                                          .CircleBorder24,
                                                                                      padding: ButtonPadding
                                                                                          .PaddingAll16,
                                                                                      fontStyle: ButtonFontStyle
                                                                                          .RobotoBold16)
                                                                                ])))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgImageplaceholder4,
                                                          height: getVerticalSize(
                                                              180.00),
                                                          width: getHorizontalSize(
                                                              375.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                              getHorizontalSize(
                                                                  20.00)),
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))
                                            ]))),
                              ],
                            ),
                          )
                        ]))))));
  }

  onTapImgArrowright(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.scrollViewScreen);
  }

  onTapArrowleft72(BuildContext context) {
    Navigator.pop(context);
  }
}
