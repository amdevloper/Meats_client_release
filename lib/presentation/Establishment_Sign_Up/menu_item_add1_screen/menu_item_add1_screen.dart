import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_checkbox.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_radio_button.dart';
import '../../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable


class MenuItemAdd1Screen extends StatefulWidget {
  const MenuItemAdd1Screen({Key? key}) : super(key: key);

  @override
  State<MenuItemAdd1Screen> createState() => _MenuItemAdd1ScreenState();
}

class _MenuItemAdd1ScreenState extends State<MenuItemAdd1Screen> {
  String radioGroup = "";

  List<String> radioList = ["lbl_lunch", "lbl_breakfast", "lbl_dinner"];

  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  Map<String, dynamic> ingradientsMap = {};

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController controlsTextTwoController = TextEditingController();

  TextEditingController itemOriginalPriceController = TextEditingController();

  TextEditingController itemDiscountPriceController = TextEditingController();

  TextEditingController addIngradientsController = TextEditingController();

  TextEditingController pricesController = TextEditingController();



  String radioGroup1 = "";

  List<String> radioList1 = ["lbl_veg", "lbl_non_veg"];

  String radioGroup2 = "";

  List<String> radioList2 = ["lbl_any_1_selection", "lbl_multi_selection"];

  String radioGroup3 = "";

  List<String> radioList3 = ["lbl_any_1_selection", "lbl_multi_selection"];

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  bool checkbox1 = false;

  bool checkbox2 = false;

  var imagePicker;


  var _image;

  bool categorySelection = false;

  @override
void initState() {
    // TODO: implement initState
  imagePicker = new ImagePicker();
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(50.00),
                centerTitle: true,
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 18, bottom: 30, right: 246),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () => onTapArrowleft61(context)),
                                AppbarSubtitle(
                                    text: "Add Item",
                                    margin: getMargin(left: 14))
                              ])),
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: Container(
                          //         height: getVerticalSize(1.00),
                          //         width: size.width,
                          //         margin: getMargin(top: 14),
                          //         decoration: BoxDecoration(
                          //             color: ColorConstant.gray300)))
                        ])),
                styleType: Style.bgFillWhiteA700_1),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                      // height: 700,
                        width: size.width,
                        margin: getMargin(top: 11),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 20),
                                  child: Row(children: [
                                    GestureDetector(
                                      onTap:() async {
                                     var source = ImageSource.gallery;
                                     XFile image = await imagePicker.pickImage(
                                         source: source, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
                                     setState(() {
                                      _image = File(image.path);
                                         });
                                      },
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgVideocameraBlueGray300,
                                          height: getSize(24.00),
                                          width: getSize(24.00)),
                                    ),
                                    GestureDetector(
                                            onTap: () async {
                                          var source = ImageSource.camera;
                                          XFile image = await imagePicker.pickImage(
                                              source: source, imageQuality: 50, preferredCameraDevice: CameraDevice.front);
                                          setState(() {
                                            _image = File(image.path);
                                          });
                                      },
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgCameraBlueGray300,
                                          height: getSize(54.00),
                                          width: getSize(24.00),
                                          margin: getMargin(left: 12)),
                                    )
                                  ])),
                              Container(
                                  height: getSize(100.00),
                                  width: getSize(100.00),
                                  margin: getMargin(left: 20, top: 20),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        if(_image != null) ... [
                                             Image.file(
                                          _image,
                                          width: 100.0,
                                          height: 100.0,
                                          fit: BoxFit.fitHeight,
                                        )],
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                margin: getMargin(top: 72),
                                                padding: getPadding(
                                                    left: 7,
                                                    top: 5,
                                                    right: 7,
                                                    bottom: 5),
                                                decoration: AppDecoration
                                                    .fillGray90090
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL10),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text("Edit",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular14WhiteA700),
                                                      InkWell(
                                                        onTap: () {
                                                          setState(() {
                                                            _image = null;
                                                          });
                                                        },
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightWhiteA700,
                                                            height:
                                                                getSize(12.00),
                                                            width: getSize(12.00),
                                                            margin: getMargin(
                                                                left: 42,
                                                                top: 2,
                                                                bottom: 2)),
                                                      )
                                                    ])))
                                      ])),
                              Padding(
                                  padding: getPadding(left: 20, top: 20),
                                  child: Row(children: [
                                    CustomRadioButton(
                                        text: "Lunch",
                                        iconSize: 24,
                                        value: radioList[0],
                                        groupValue: radioGroup,
                                        shape: RadioShape.CircleBorder12,
                                        fontStyle:
                                            RadioFontStyle.RobotoRegular16,
                                        onChange: (value) {
                                          setState(() {
                                            radioGroup = value;
                                          });
                                        }),
                                    CustomRadioButton(
                                        text: "Breakfast",
                                        iconSize: 24,
                                        value: radioList[1],
                                        groupValue: radioGroup,
                                        margin: getMargin(left: 19),
                                        shape: RadioShape.CircleBorder12,
                                        fontStyle:
                                            RadioFontStyle.RobotoRegular16,
                                        onChange: (value) {
                                          setState(() {
                                            radioGroup = value;
                                          });
                                        }),
                                    CustomRadioButton(
                                        text: "Dinner",
                                        iconSize: 24,
                                        value: radioList[2],
                                        groupValue: radioGroup,
                                        margin: getMargin(left: 28),
                                        shape: RadioShape.CircleBorder12,
                                        fontStyle:
                                            RadioFontStyle.RobotoRegular16,
                                        onChange: (value) {
                                          setState(() {
                                            radioGroup = value;
                                          });
                                        })
                                  ])),
                              // CustomDropDown(
                              //     width: 335,
                              //     focusNode: FocusNode(),
                              //     icon: Container(
                              //         margin: getMargin(left: 30, right: 12),
                              //         child: CustomImageView(
                              //             svgPath: ImageConstant
                              //                 .imgArrowdownBlack900)),
                              //     hintText: "Item category",
                              //     margin: getMargin(top: 20),
                              //     alignment: Alignment.center,
                              //     items: dropdownItemList,
                              //     onChanged: (value) {}),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextOneController,
                                  hintText: "Item category",
                                  margin: getMargin(top: 20),
                                  alignment: Alignment.center),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextOneController,
                                  hintText: "Item name",
                                  margin: getMargin(top: 20),
                                  alignment: Alignment.center),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextTwoController,
                                  hintText: "About item",
                                  margin: getMargin(top: 20),
                                  padding: TextFormFieldPadding.PaddingAll17,
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  maxLines: 7),
                              Container(
                                  margin: getMargin(
                                      top: 20, right: 20, left: 20),
                                  padding: getPadding(
                                      left: 6, top: 7, right: 6, bottom: 7),
                                  decoration: AppDecoration.outlineGray300
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                              // left: 9,
                                                top: 0,
                                                bottom: 0),
                                            child: CustomTextFormField(
                                                isClickEnabled: true,
                                                width: 200,
                                                focusNode: FocusNode(),
                                                controller:
                                                itemDiscountPriceController,
                                                hintText: "Item original price",
                                                // margin: getMargin(
                                                //     top: 20,
                                                //     right: 2),
                                                textInputAction:
                                                TextInputAction.done)),

                                        // Text(
                                        //     "Delivery Radius",
                                        //     overflow: TextOverflow
                                        //         .ellipsis,
                                        //     textAlign: TextAlign
                                        //         .left,
                                        //     style: AppStyle
                                        //         .txtRobotoRegular16)),
                                        Spacer(),
                                        Container(
                                            height: getVerticalSize(35.00),
                                            width: getHorizontalSize(1.00),
                                            decoration: BoxDecoration(
                                                color:
                                                ColorConstant.gray300)),
                                        Padding(
                                            padding: getPadding(
                                                left: 20,
                                                right: 20,
                                                top: 7,
                                                bottom: 9),
                                            child: Text("\$",
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Gray900))
                                      ])),
                              Container(
                                  margin: getMargin(
                                      top: 20, right: 20, left: 20),
                                  padding: getPadding(
                                      left: 6, top: 7, right: 6, bottom: 7),
                                  decoration: AppDecoration.outlineGray300
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                              // left: 9,
                                                top: 0,
                                                bottom: 0),
                                            child: CustomTextFormField(
                                                isClickEnabled: true,
                                                width: 200,
                                                focusNode: FocusNode(),
                                                controller:
                                                itemDiscountPriceController,
                                                hintText: "Item discount price",
                                                // margin: getMargin(
                                                //     top: 20,
                                                //     right: 2),
                                                textInputAction:
                                                TextInputAction.done)),

                                        // Text(
                                        //     "Delivery Radius",
                                        //     overflow: TextOverflow
                                        //         .ellipsis,
                                        //     textAlign: TextAlign
                                        //         .left,
                                        //     style: AppStyle
                                        //         .txtRobotoRegular16)),
                                        Spacer(),
                                        Container(
                                            height: getVerticalSize(35.00),
                                            width: getHorizontalSize(1.00),
                                            decoration: BoxDecoration(
                                                color:
                                                ColorConstant.gray300)),
                                        Padding(
                                            padding: getPadding(
                                                left: 13,
                                                top: 7,
                                                right: 20,
                                                bottom: 9),
                                            child: Text("\$",
                                                overflow:
                                                TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Gray900))
                                      ])),

                              // Align(
                              //     alignment: Alignment.center,
                              //     child: Container(
                              //         margin: getMargin(
                              //             left: 20, top: 20, right: 20),
                              //         padding: getPadding(
                              //             left: 16,
                              //             top: 7,
                              //             right: 16,
                              //             bottom: 7),
                              //         decoration: AppDecoration.outlineGray300
                              //             .copyWith(
                              //                 borderRadius: BorderRadiusStyle
                              //                     .roundedBorder8),
                              //         child: Row(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.center,
                              //             children: [
                              //               Padding(
                              //                   padding: getPadding(
                              //                       top: 8, bottom: 7),
                              //                   child: Text(
                              //                       "Item original price",
                              //                       overflow:
                              //                           TextOverflow.ellipsis,
                              //                       textAlign: TextAlign.left,
                              //                       style: AppStyle
                              //                           .txtRobotoRegular16)),
                              //               Spacer(),
                              //               Container(
                              //                   height: getVerticalSize(35.00),
                              //                   width: getHorizontalSize(1.00),
                              //                   decoration: BoxDecoration(
                              //                       color:
                              //                           ColorConstant.gray300)),
                              //               Padding(
                              //                   padding: getPadding(
                              //                       left: 13,
                              //                       top: 7,
                              //                       bottom: 9),
                              //                   child: Text("\$",
                              //                       overflow:
                              //                           TextOverflow.ellipsis,
                              //                       textAlign: TextAlign.left,
                              //                       style: AppStyle
                              //                           .txtRobotoRegular16Gray900))
                              //             ]))),
                              // Container(
                              //     height: getVerticalSize(64.00),
                              //     width: size.width,
                              //     margin: getMargin(top: 20),
                              //     child: Stack(
                              //         alignment: Alignment.bottomCenter,
                              //         children: [
                              //           Align(
                              //               alignment: Alignment.topCenter,
                              //               child: Container(
                              //                   margin: getMargin(
                              //                       left: 20,
                              //                       right: 20,
                              //                       bottom: 14),
                              //                   padding: getPadding(
                              //                       left: 16,
                              //                       top: 7,
                              //                       right: 16,
                              //                       bottom: 7),
                              //                   decoration: AppDecoration
                              //                       .outlineGray300
                              //                       .copyWith(
                              //                           borderRadius:
                              //                               BorderRadiusStyle
                              //                                   .roundedBorder8),
                              //                   child: Row(
                              //                       mainAxisAlignment:
                              //                           MainAxisAlignment
                              //                               .center,
                              //                       crossAxisAlignment:
                              //                           CrossAxisAlignment
                              //                               .start,
                              //                       children: [
                              //                         Padding(
                              //                             padding: getPadding(
                              //                                 top: 7,
                              //                                 bottom: 8),
                              //                             child: Text(
                              //                                 "Item discount price",
                              //                                 overflow:
                              //                                     TextOverflow
                              //                                         .ellipsis,
                              //                                 textAlign:
                              //                                     TextAlign
                              //                                         .left,
                              //                                 style: AppStyle
                              //                                     .txtRobotoRegular16)),
                              //                         Spacer(),
                              //                         Container(
                              //                             height:
                              //                                 getVerticalSize(
                              //                                     35.00),
                              //                             width:
                              //                                 getHorizontalSize(
                              //                                     1.00),
                              //                             decoration: BoxDecoration(
                              //                                 color:
                              //                                     ColorConstant
                              //                                         .gray300)),
                              //                         Padding(
                              //                             padding: getPadding(
                              //                                 left: 13,
                              //                                 top: 7,
                              //                                 bottom: 9),
                              //                             child: Text("\$",
                              //                                 overflow:
                              //                                     TextOverflow
                              //                                         .ellipsis,
                              //                                 textAlign:
                              //                                     TextAlign
                              //                                   .left,
                              //                                 style: AppStyle
                              //                                     .txtRobotoRegular16Gray900))
                              //                       ]))),
                              //           // Align(
                              //           //     alignment: Alignment.bottomCenter,
                              //           //     child: Container(
                              //           //         width: size.width,
                              //           //         padding: getPadding(
                              //           //             left: 163,
                              //           //             top: 6,
                              //           //             right: 163,
                              //           //             bottom: 6),
                              //           //         decoration:
                              //           //             AppDecoration.fillWhiteA700,
                              //           //         child: Column(
                              //           //             mainAxisSize:
                              //           //                 MainAxisSize.min,
                              //           //             mainAxisAlignment:
                              //           //                 MainAxisAlignment
                              //           //                     .center,
                              //           //             children: [
                              //           //               CustomImageView(
                              //           //                   svgPath: ImageConstant
                              //           //                       .imgRectangle,
                              //           //                   height:
                              //           //                       getVerticalSize(
                              //           //                           5.00),
                              //           //                   width:
                              //           //                       getHorizontalSize(
                              //           //                           48.00),
                              //           //                   radius: BorderRadius
                              //           //                       .circular(
                              //           //                           getHorizontalSize(
                              //           //                               2.00)),
                              //           //                   margin:
                              //           //                       getMargin(top: 2))
                              //           //             ])))
                              //         ])),
                              Padding(
                                  padding: getPadding(left: 20, top: 5),
                                  child: Row(children: [
                                    CustomRadioButton(
                                        text: "Veg",
                                        iconSize: 24,
                                        value: radioList1[0],
                                        groupValue: radioGroup1,
                                        shape: RadioShape.CircleBorder12,
                                        fontStyle:
                                            RadioFontStyle.RobotoRegular16,
                                        onChange: (value) {
                                          setState(() {
                                            radioGroup1 = value;
                                          });
                                        }),
                                    CustomRadioButton(
                                        text: "Non-Veg",
                                        iconSize: 24,
                                        value: radioList1[1],
                                        groupValue: radioGroup1,
                                        margin: getMargin(left: 20),
                                        shape: RadioShape.CircleBorder12,
                                        fontStyle:
                                            RadioFontStyle.RobotoRegular16,
                                        onChange: (value) {
                                         setState(() {
                                           radioGroup1 = value;
                                         });
                                        })
                                  ])),
                              // Padding(
                              //     padding: getPadding(left: 20, top: 20),
                              //     child: Row(children: [
                              //       CustomIconButton(
                              //           height: 24,
                              //           width: 24,
                              //           child: CustomImageView(
                              //               svgPath: ImageConstant
                              //                   .imgCheckmarkWhiteA700)),
                              //       Padding(
                              //           padding: getPadding(
                              //               left: 6, top: 4, bottom: 3),
                              //           child: Text("Recommended",
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtRobotoRegular16Gray900)),
                              //       CustomIconButton(
                              //           height: 24,
                              //           width: 24,
                              //           margin: getMargin(left: 28),
                              //           child: CustomImageView(
                              //               svgPath: ImageConstant
                              //                   .imgCheckmarkWhiteA700)),
                              //       Padding(
                              //           padding: getPadding(
                              //               left: 6, top: 4, bottom: 3),
                              //           child: Text("Customization",
                              //               overflow: TextOverflow.ellipsis,
                              //               textAlign: TextAlign.left,
                              //               style: AppStyle
                              //                   .txtRobotoRegular16Gray900))
                              //     ])),





                              Container(
                                  height:
                                  getVerticalSize(44.00),
                                  width:
                                  MediaQuery.of(context).size.width/1.1,
                                  margin: getMargin(left: 6),
                                  child: Stack(
                                      alignment:
                                      Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment
                                                .centerLeft,
                                            child:
                                            CustomCheckbox(
                                                alignment:
                                                Alignment
                                                    .centerLeft,
                                                text:
                                                "Recommended",
                                                iconSize:
                                                24,
                                                value:
                                                checkbox1,
                                                onChange:
                                                    (value) {
                                                  setState(() {
                                                    checkbox1 =
                                                        value;
                                                  });
                                                })),
                                        Align(
                                            alignment: Alignment
                                                .centerRight,
                                            child:
                                            CustomCheckbox(
                                                alignment:
                                                Alignment
                                                    .centerRight,
                                                text:
                                                "Customization",
                                                iconSize:
                                                24,
                                                value:
                                                checkbox2,
                                                onChange:
                                                    (value) {
                                                  setState(() {
                                                    checkbox2 =
                                                        value;
                                                  });
                                                }))
                                      ])),




                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(1.00)))),






                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 20, top: 20, right: 20),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 4),
                                                child: Text(
                                                    "Write Category Name",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular16)),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightBlueGray30020x20,
                                                height: getSize(20.00),
                                                width: getSize(20.00))
                                          ]))),
                              Padding(
                                  padding: getPadding(left: 3, top: 14),
                                  child: Row(children: [
                                    CustomRadioButton(
                                        text: "Any 1 Selection",
                                        iconSize: 24,
                                        value: radioList2[0],
                                        groupValue: radioGroup2,
                                        shape: RadioShape.CircleBorder12,
                                        fontStyle:
                                            RadioFontStyle.RobotoRegular16,
                                        onChange: (value) {
                                          setState(() {
                                            radioGroup2 = value;
                                          });
                                        }),
                                    CustomRadioButton(
                                        text: "Multi Selection",
                                        iconSize: 24,
                                        value: radioList2[1],
                                        groupValue: radioGroup2,
                                        margin: getMargin(left: 23),
                                        shape: RadioShape.CircleBorder12,
                                        fontStyle:
                                            RadioFontStyle.RobotoRegular16,
                                        onChange: (value) {
                                          setState(() {
                                            radioGroup2 = value;
                                          });
                                        })
                                  ])),
                              // Align(
                              //     alignment: Alignment.center,
                              //     child: Padding(
                              //         padding: getPadding(
                              //             left: 20, top: 20, right: 20),
                              //         child: Row(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.spaceBetween,
                              //             children: [
                              //               Container(
                              //                   width: getHorizontalSize(95.00),
                              //                   child: RichText(
                              //                       text: TextSpan(children: [
                              //                         TextSpan(
                              //                             text:
                              //                                 "Onions\nCapsicum\n",
                              //                             style: TextStyle(
                              //                                 color:
                              //                                     ColorConstant
                              //                                         .gray900,
                              //                                 fontSize:
                              //                                     getFontSize(
                              //                                         12),
                              //                                 fontFamily:
                              //                                     'Roboto',
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w500)),
                              //                         TextSpan(
                              //                             text:
                              //                                 "Ingredients Name\nIngredients Name",
                              //                             style: TextStyle(
                              //                                 color: ColorConstant
                              //                                     .blueGray300,
                              //                                 fontSize:
                              //                                     getFontSize(
                              //                                         12),
                              //                                 fontFamily:
                              //                                     'Roboto',
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w400))
                              //                       ]),
                              //                       textAlign: TextAlign.left)),
                              //               Container(
                              //                   width: getHorizontalSize(28.00),
                              //                   child: RichText(
                              //                       text: TextSpan(children: [
                              //                         TextSpan(
                              //                             text:
                              //                                 "\$4.5\n\$6.0\n",
                              //                             style: TextStyle(
                              //                                 color:
                              //                                     ColorConstant
                              //                                         .gray900,
                              //                                 fontSize:
                              //                                     getFontSize(
                              //                                         12),
                              //                                 fontFamily:
                              //                                     'Roboto',
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w500)),
                              //                         TextSpan(
                              //                             text: "Price\nPrice",
                              //                             style: TextStyle(
                              //                                 color: ColorConstant
                              //                                     .blueGray300,
                              //                                 fontSize:
                              //                                     getFontSize(
                              //                                         12),
                              //                                 fontFamily:
                              //                                     'Roboto',
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w400))
                              //                       ]),
                              //                       textAlign: TextAlign.left))
                              //             ]))),

                               // ListView.builder(
                               //  shrinkWrap: true,
                               //  physics: NeverScrollableScrollPhysics(),
                               //  itemCount: ingradientsMap!.length,
                               //  itemBuilder:(context, index){
                               //    ingradientsMap.forEach((key, value) {
                               //      print('Key = $key : Value = $value');
                               //      Column(
                               //        children: [
                               //          Text(key),
                               //          Text(value),
                               //        ],
                               //      );
                               //    });
                               //  }),


                      ListView.builder(
                        shrinkWrap: true,
                itemCount: ingradientsMap.length,
                    itemBuilder: (BuildContext context, int index) {
            String key = ingradientsMap.keys.elementAt(index);
            return  Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(key),
                    ),
                    Padding(
                    padding: const EdgeInsets.only(top: 20),
                      child: Text("${ingradientsMap[key]}"),
                    ),
                    if( radioGroup2.toString() == "lbl_any_1_selection") ...[
                      CustomRadioButton(
                      // text: "Veg",
                      iconSize: 24,
                      value: radioList1[0],
                      groupValue: radioGroup1,
                      shape: RadioShape.CircleBorder12,
                      fontStyle:
                      RadioFontStyle.RobotoRegular16,
                      onChange: (value) {
                      setState(() {
                      radioGroup1 = value;
                      });
                      }),
                    ] else ...[
                      CustomCheckbox(
                          // alignment:
                          // Alignment.topLeft,
                          iconSize:
                          24,
                          value:
                          false,
                          onChange:
                              (value) {
                            setState(() {
                              // checkbox1 =
                              //     value;
                            });
                          })
                    ],

                  ],
                ),
              ),
            //  const Divider(
            // height: 2.0,
            // ),
            ],
            );
            },
            ),

                              Padding(
                                  padding: getPadding(left: 20, top: 20),
                                  child: GestureDetector(
                                      onTap: () {
                                        showMessageView();
                                      },
                                    child: Text("+ Add Ingredients",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style:
                                            AppStyle.txtRobotoMedium16Gray900),
                                  )),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300,
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(1.00)))),
                              // Align(
                              //     alignment: Alignment.center,
                              //     child: Padding(
                              //         padding: getPadding(
                              //             left: 20, top: 18, right: 20),
                              //         child: Row(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.spaceBetween,
                              //             children: [
                              //               Padding(
                              //                   padding: getPadding(
                              //                       top: 2, bottom: 2),
                              //                   child: Text(
                              //                       "Write Category Name",
                              //                       overflow:
                              //                           TextOverflow.ellipsis,
                              //                       textAlign: TextAlign.left,
                              //                       style: AppStyle
                              //                           .txtRobotoRegular16)),
                              //               CustomImageView(
                              //                   svgPath: ImageConstant
                              //                       .imgArrowrightBlueGray30020x20,
                              //                   height: getSize(20.00),
                              //                   width: getSize(20.00))
                              //             ]))),
                              // Padding(
                              //     padding: getPadding(left: 20, top: 16),
                              //     child: Row(children: [
                              //       CustomRadioButton(
                              //           text: "Any 1 Selection",
                              //           iconSize: 24,
                              //           value: radioList3[0],
                              //           groupValue: radioGroup3,
                              //           shape: RadioShape.CircleBorder12,
                              //           fontStyle:
                              //               RadioFontStyle.RobotoRegular16,
                              //           onChange: (value) {
                              //             radioGroup3 = value;
                              //           }),
                              //       CustomRadioButton(
                              //           text: "Multi Selection",
                              //           iconSize: 24,
                              //           value: radioList3[1],
                              //           groupValue: radioGroup3,
                              //           margin: getMargin(left: 23),
                              //           shape: RadioShape.CircleBorder12,
                              //           fontStyle:
                              //               RadioFontStyle.RobotoRegular16,
                              //           onChange: (value) {
                              //             radioGroup3 = value;
                              //           })
                              //     ])),
                              // Align(
                              //     alignment: Alignment.center,
                              //     child: Padding(
                              //         padding: getPadding(
                              //             left: 20, top: 14, right: 20),
                              //         child: Row(
                              //             mainAxisAlignment:
                              //                 MainAxisAlignment.spaceBetween,
                              //             children: [
                              //               Container(
                              //                   width: getHorizontalSize(95.00),
                              //                   child: RichText(
                              //                       text: TextSpan(children: [
                              //                         TextSpan(
                              //                             text:
                              //                                 "Extra cheese\nCheese Dip\n",
                              //                             style: TextStyle(
                              //                                 color:
                              //                                     ColorConstant
                              //                                         .gray900,
                              //                                 fontSize:
                              //                                     getFontSize(
                              //                                         12),
                              //                                 fontFamily:
                              //                                     'Roboto',
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w500)),
                              //                         TextSpan(
                              //                             text:
                              //                                 "Ingredients Name\nIngredients Name",
                              //                             style: TextStyle(
                              //                                 color: ColorConstant
                              //                                     .blueGray300,
                              //                                 fontSize:
                              //                                     getFontSize(
                              //                                         12),
                              //                                 fontFamily:
                              //                                     'Roboto',
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w400))
                              //                       ]),
                              //                       textAlign: TextAlign.left)),
                              //               Container(
                              //                   width: getHorizontalSize(28.00),
                              //                   child: RichText(
                              //                       text: TextSpan(children: [
                              //                         TextSpan(
                              //                             text:
                              //                                 "\$4.5\n\$6.0\n",
                              //                             style: TextStyle(
                              //                                 color:
                              //                                     ColorConstant
                              //                                         .gray900,
                              //                                 fontSize:
                              //                                     getFontSize(
                              //                                         12),
                              //                                 fontFamily:
                              //                                     'Roboto',
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w500)),
                              //                         TextSpan(
                              //                             text: "Price\nPrice",
                              //                             style: TextStyle(
                              //                                 color: ColorConstant
                              //                                     .blueGray300,
                              //                                 fontSize:
                              //                                     getFontSize(
                              //                                         12),
                              //                                 fontFamily:
                              //                                     'Roboto',
                              //                                 fontWeight:
                              //                                     FontWeight
                              //                                         .w400))
                              //                       ]),
                              //                       textAlign: TextAlign.left))
                              //             ]))),
                              // Padding(
                              //     padding: getPadding(left: 20, top: 20),
                              //     child: GestureDetector(
                              //       onTap: () {
                              //         showMessageView();
                              //       },
                              //       child: Text("+ Add Ingredients",
                              //           overflow: TextOverflow.ellipsis,
                              //           textAlign: TextAlign.center,
                              //           style:
                              //               AppStyle.txtRobotoMedium16Gray900),
                              //     )),
                              // Container(
                              //     height: getVerticalSize(1.00),
                              //     width: size.width,
                              //     margin: getMargin(top: 20),
                              //     decoration: BoxDecoration(
                              //         color: ColorConstant.gray300,
                              //         borderRadius: BorderRadius.circular(
                              //             getHorizontalSize(1.00)))),
                              // CustomButton(
                              //     height: 32,
                              //     width: 132,
                              //     text: "+ Add Category",
                              //     margin: getMargin(left: 20, top: 20),
                              //     variant: ButtonVariant.FillRed300,
                              //     shape: ButtonShape.CircleBorder16,
                              //     padding: ButtonPadding.PaddingAll9,
                              //     fontStyle: ButtonFontStyle.RobotoMedium16),
                              CustomButton(
                                  height: 50,
                                  width: 335,
                                  text: "Add Item",
                                  margin: getMargin(top: 20,bottom: 30),
                                  padding: ButtonPadding.PaddingAll16,
                                  alignment: Alignment.center)
                            ]))))));
  }


  void getValuesFromMap(Map map) {
    // Get all values
    ingradientsMap.values.forEach((value) {
      print(value);
    });
    ingradientsMap.values.forEach((value) {
      print(value);
    });

  }

  Future showMessageView() {
    return showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text("Add Ingredients",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoMedium24Black900),
              content: Container(
                  width: getHorizontalSize(size.width/1.1),
                  padding: getPadding(top: 0, bottom: 0),
                  decoration: AppDecoration.fillWhiteA700
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
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
                                width: getHorizontalSize(size.width/1.1),
                                margin: getMargin(left: 11, top: 11),
                                child: Text(
                                    "Add new Ingredient for your establishment",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.txtRobotoRegular16Gray900))),
                        CustomTextFormField(
                            width: 295,
                            focusNode: FocusNode(),
                            controller: addIngradientsController,
                            hintText: "Enter Ingredients",
                            margin: getMargin(top: 19,left: 5,right: 5),
                            padding: TextFormFieldPadding.PaddingT17,
                            fontStyle: TextFormFieldFontStyle.RobotoRegular12,
                            textInputAction: TextInputAction.done),
                        CustomTextFormField(
                            width: 295,
                            focusNode: FocusNode(),
                            controller: pricesController,
                            hintText: "Enter Price",
                            margin: getMargin(top: 19,left: 5,right: 5),
                            padding: TextFormFieldPadding.PaddingT17,
                            fontStyle: TextFormFieldFontStyle.RobotoRegular12,
                            textInputAction: TextInputAction.done),

                        CustomButton(
                            height: 48,
                            width: 200,
                            text: "Add New",
                            margin: getMargin(top: 28),
                            onTap: () {
                              setState(() {
                                ingradientsMap.addEntries([
                                  MapEntry(addIngradientsController.value.text, pricesController.value.text),
                                ]);
                                addIngradientsController.text = '';
                                pricesController.text = '';

                                Navigator.pop(context);
                              });


                            }),
                        Padding(
                            padding: getPadding(top: 5),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Cancel",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.txtRobotoBold16Bluegray300)))
                      ])));
        });
  }


  onTapArrowleft61(BuildContext context) {
    Navigator.pop(context);
  }
}
