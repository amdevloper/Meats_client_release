import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

class PrepareOrderFullDetailsScreen extends StatefulWidget {
  final dynamic arguments;
  const PrepareOrderFullDetailsScreen({Key? key, this.arguments});

  @override
  State<PrepareOrderFullDetailsScreen> createState() => _PrepareOrderFullDetailsScreenState();
}

class _PrepareOrderFullDetailsScreenState extends State<PrepareOrderFullDetailsScreen> {

  String radioGroup = "";

  String radioGroup1 = "";

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
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 17, top: 8, right: 208),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24.00),
                                width: getSize(24.00),
                                svgPath: ImageConstant.imgArrowleft,
                                onTap: () => onTapArrowleft57(context)),
                            AppbarSubtitle(
                                text: "Prepare Order",
                                margin: getMargin(left: 14, top: 2))
                          ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(1.00),
                              width: getHorizontalSize(374.00),
                              margin: getMargin(top: 13, right: 1),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)))
                    ]),
                styleType: Style.bgFillWhiteA700_1),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: getVerticalSize(size.height + 30),
                        width: getHorizontalSize(374.00),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(left: 19, right: 20,top: 11),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Order ID: ${widget.arguments["id"]} ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14),
                                              Text("6:26 PM",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Bluegray500)
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 19, top: 8),
                                            child: Text(
                                                " ${widget.arguments["items"].length} Orders by ${widget.arguments["user_name"]}",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular10))),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(334.00),
                                        margin: getMargin(top: 12),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)),
                                    ListView.separated(
                                        physics: const BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: getVerticalSize(3.00));
                                        },
                                        itemCount: widget.arguments["items"].length,
                                        itemBuilder: (context, indexv) {
                                          return Padding(
                                            padding: getPadding(
                                              left: 15,
                                              top: 12,
                                              right: 20,
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Align(
                                                    alignment: Alignment.centerLeft,
                                                    child: Row(children: [
                                                      const Stack(
                                                        alignment: Alignment.center,
                                                        children: [
                                                          Icon(Icons.crop_square_sharp, color: Colors.green, size: 25,),
                                                          Icon(Icons.circle, color: Colors.green, size: 8),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Text("${widget.arguments["items"][indexv]}"),

                                                        // child: Text("${widget.arguments["items"][indexv]["name"]}"),
                                                      ),
                                                      // Padding(
                                                      //     padding: getPadding(
                                                      //         left: 4, bottom: 2),
                                                      //     child: Text("x1",
                                                      //         overflow: TextOverflow
                                                      //             .ellipsis,
                                                      //         textAlign:
                                                      //         TextAlign.left,
                                                      //         style: AppStyle
                                                      //             .txtRobotoRegular12Bluegray300))
                                                    ])),
                                                Padding(
                                                  padding: getPadding(
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "\$ 6",
                                                    // "\$ ${widget.arguments["items"][indexv]["price"]}",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtRobotoMedium14Gray90001,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }),

                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(335.00),
                                        margin: getMargin(top: 1),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)),
                                    // Padding(
                                    //     padding: getPadding(
                                    //         left: 19, top: 14, right: 19),
                                    //     child: Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.spaceBetween,
                                    //         children: [
                                    //           Container(
                                    //               width:
                                    //                   getHorizontalSize(119.00),
                                    //               margin: getMargin(top: 1),
                                    //               child: Text(
                                    //                   "Item Total\nDelivery Fees\nTotal Discount\nTaxes and Charges",
                                    //                   maxLines: null,
                                    //                   textAlign: TextAlign.left,
                                    //                   style: AppStyle
                                    //                       .txtRobotoMedium14Bluegray300)),
                                    //           Container(
                                    //               width:
                                    //                   getHorizontalSize(44.00),
                                    //               margin: getMargin(bottom: 1),
                                    //               child: RichText(
                                    //                   text: TextSpan(children: [
                                    //                     TextSpan(
                                    //                         text:
                                    //                             "\$12.00\n\$2.00\n",
                                    //                         style: TextStyle(
                                    //                             color:
                                    //                                 ColorConstant
                                    //                                     .gray900,
                                    //                             fontSize:
                                    //                                 getFontSize(
                                    //                                     14),
                                    //                             fontFamily:
                                    //                                 'Roboto',
                                    //                             fontWeight:
                                    //                                 FontWeight
                                    //                                     .w500)),
                                    //                     TextSpan(
                                    //                         text: "-\$2.00\n",
                                    //                         style: TextStyle(
                                    //                             color:
                                    //                                 ColorConstant
                                    //                                     .teal300,
                                    //                             fontSize:
                                    //                                 getFontSize(
                                    //                                     14),
                                    //                             fontFamily:
                                    //                                 'Roboto',
                                    //                             fontWeight:
                                    //                                 FontWeight
                                    //                                     .w500)),
                                    //                     TextSpan(
                                    //                         text: "\$2.00",
                                    //                         style: TextStyle(
                                    //                             color:
                                    //                                 ColorConstant
                                    //                                     .gray900,
                                    //                             fontSize:
                                    //                                 getFontSize(
                                    //                                     14),
                                    //                             fontFamily:
                                    //                                 'Roboto',
                                    //                             fontWeight:
                                    //                                 FontWeight
                                    //                                     .w500))
                                    //                   ]),
                                    //                   textAlign:
                                    //                       TextAlign.right))
                                    //         ])),
                                    // Container(
                                    //     height: getVerticalSize(1.00),
                                    //     width: getHorizontalSize(335.00),
                                    //     margin: getMargin(top: 13),
                                    //     decoration: BoxDecoration(
                                    //         color: ColorConstant.gray300,
                                    //         borderRadius: BorderRadius.circular(
                                    //             getHorizontalSize(1.00)))),
                                    // Padding(
                                    //     padding: getPadding(
                                    //         left: 19, top: 15, right: 19),
                                    //     child: Row(
                                    //         mainAxisAlignment:
                                    //             MainAxisAlignment.spaceBetween,
                                    //         children: [
                                    //           Text("Grand Total",
                                    //               overflow:
                                    //                   TextOverflow.ellipsis,
                                    //               textAlign: TextAlign.left,
                                    //               style:
                                    //                   AppStyle.txtRobotoBold14),
                                    //           Text("\$14.00",
                                    //               overflow:
                                    //                   TextOverflow.ellipsis,
                                    //               textAlign: TextAlign.left,
                                    //               style:
                                    //                   AppStyle.txtRobotoBold14)
                                    //         ])),
                                    Padding(
                                        padding: getPadding(left: 20, top: 14, right: 20),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Item Total", maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium14Bluegray300,),
                                              Text("\$${widget.arguments["item_total"]}"),
                                            ])),
                                      Padding(
                                          padding: getPadding(left: 20, top: 14, right: 20),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Delivery Fees", maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Bluegray300,),
                                                Text("\$${widget.arguments["delivery_fee"]}"),
                                              ])),
                                      Padding(
                                          padding: getPadding(left: 20, top: 14, right: 20),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Total Discount", maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Bluegray300,),
                                                Text("\$${widget.arguments["taxes_charges"]}"),
                                              ])),
                                      Padding(
                                          padding: getPadding(left: 20, top: 14, right: 20),
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Taxes and Charges", maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Bluegray300,),
                                                Text("\$${widget.arguments["Taxes and Charges"]}"),
                                              ])),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(335.00),
                                        margin: getMargin(top: 13),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(1.00)))),
                                    Padding(
                                        padding: getPadding(left: 20, top: 15, right: 20),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Grand Total",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtRobotoBold14),
                                              Text("\$${widget.arguments["price"]}",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtRobotoBold14)
                                            ])),

                                    Container(
                                        height: getVerticalSize(5.00),
                                        width: getHorizontalSize(374.00),
                                        margin: getMargin(top: 26),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 19, top: 17),
                                            child: Text("Order Details",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium16Gray900))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 19, top: 27),
                                            child: Text("Payment Method",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium12))),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 6, right: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Text(
                                                      "${widget.arguments["payment_method"]}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray900)),
                                              Container(
                                                  width:
                                                      getHorizontalSize(75.00),
                                                  padding: getPadding(
                                                      left: 7,
                                                      top: 2,
                                                      right: 7,
                                                      bottom: 2),
                                                  decoration: AppDecoration
                                                      .txtOutlineGray300
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .txtCircleBorder12),
                                                  child: Text(widget.arguments["payment_method"] != null ? "Paid" : "to be paid",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular12Black900))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 19, top: 26),
                                            child: Text("Deliver to",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium12))),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 3, right: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Text(
                                                      "${widget.arguments["user_name"]} | ${widget.arguments["user_phone"]}",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray900)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCallTeal300,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgContrast,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  margin: getMargin(left: 9))
                                            ])),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 19, top: 29),
                                            child: Text("Delivery Address",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium12))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 19, top: 7),
                                            child: Text("${widget.arguments["delivery_address"]}",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Gray900))),
                                    Container(
                                        height: getVerticalSize(5.00),
                                        width: getHorizontalSize(374.00),
                                        margin: getMargin(top: 20),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray200,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00)))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 19, top: 19),
                                            child: Text("Delivery Partner",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium16Gray900))),
                                    Container(
                                        margin: getMargin(
                                            left: 19, top: 17, right: 19),
                                        padding: getPadding(all: 10),
                                        decoration: AppDecoration.outlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle4334,
                                                  height: getSize(25.00),
                                                  width: getSize(25.00),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(12.00)),
                                                  margin: getMargin(bottom: 8)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8, bottom: 2),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "${widget.arguments["user_name"]} has arrived",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular12Gray900),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 3),
                                                            child: Text(
                                                                "OTP: XXXX",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: AppStyle
                                                                    .txtRobotoRegular10))
                                                      ])),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgCallTeal300,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  margin: getMargin(
                                                      top: 4, bottom: 4)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgContrast,
                                                  height: getSize(24.00),
                                                  width: getSize(24.00),
                                                  margin: getMargin(
                                                      left: 9,
                                                      top: 4,
                                                      right: 3,
                                                      bottom: 4))
                                            ])),
                                    CustomButton(
                                        height: 53,
                                        width: 335,
                                        text: "Order Ready (05:00 min)",
                                        margin: getMargin(top: 20),
                                        padding: ButtonPadding.PaddingAll16)
                                  ])),
                          // Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child: Container(
                          //         margin: getMargin(bottom: 85),
                          //         padding: getPadding(
                          //             left: 162, top: 8, right: 162, bottom: 8),
                          //         decoration: AppDecoration.fillWhiteA700,
                          //         child: Column(
                          //             mainAxisSize: MainAxisSize.min,
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.center,
                          //             children: [
                          //               CustomImageView(
                          //                   svgPath: ImageConstant.imgRectangle,
                          //                   height: getVerticalSize(5.00),
                          //                   width: getHorizontalSize(48.00),
                          //                   radius: BorderRadius.circular(
                          //                       getHorizontalSize(2.00)),
                          //                   margin: getMargin(bottom: 3))
                          //             ])))
                        ]))))));
  }

  onTapArrowleft57(BuildContext context) {
    Navigator.pop(context);
  }
}
