import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class OrderCompletedDetailsScreen extends StatefulWidget {
  final dynamic arguments;
  OrderCompletedDetailsScreen({Key? key, required this.arguments}) : super(key: key);

  @override
  State<OrderCompletedDetailsScreen> createState() => _OrderCompletedDetailsScreenState();
}

class _OrderCompletedDetailsScreenState extends State<OrderCompletedDetailsScreen> {

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
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft63(context)),
                title: AppbarSubtitle(
                    text: "Completed Order", margin: getMargin(left: 14))),
            body: SingleChildScrollView(
              child: Container(
                  width: size.width,
                  padding: getPadding(top: 5, bottom: 5),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(1.00),
                            width: size.width,
                            decoration:
                                BoxDecoration(color: ColorConstant.gray300)),
                        Padding(
                            padding: getPadding(left: 20, top: 18, right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Order ID: ${widget.arguments["id"]}",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoMedium14),
                                  Text("${widget.arguments["time"]}",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRobotoMedium14Bluegray500)
                                ])),
                        Container(
                            height: getVerticalSize(30.00),
                            width: getHorizontalSize(334.00),
                            margin: getMargin(top: 6),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: getPadding(left: 15),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width:
                                                        getHorizontalSize(73.00),
                                                    child: Text(
                                                        " ${widget.arguments["items"].length} Orders by ${widget.arguments["user_name"]}",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .txtRobotoRegular10)),
                                                Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 11),

                                                    child: Text("${widget.arguments["status"]}",
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(color: widget.arguments["status"] == "Rejected" ? Colors.red : Colors.green),
                                                            ))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          height: getVerticalSize(1.00),
                                          width: getHorizontalSize(334.00),
                                          margin: getMargin(bottom: 1),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray300)))
                                ])),

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
                                            child: Text("${widget.arguments["items"][indexv]["name"]}"),
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
                        // Padding(
                        //   padding: getPadding(
                        //     left: 20,
                        //     top: 12,
                        //     right: 20,
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Align(
                        //           alignment: Alignment.centerLeft,
                        //           child: Padding(
                        //               padding:
                        //               getPadding(left: 19, top: 10),
                        //               child: Row(children: [
                        //                 const Stack(
                        //                   alignment: Alignment.center,
                        //                   children: [
                        //                     Icon(Icons.crop_square_sharp, color: Colors.green, size: 30,),
                        //                     Icon(Icons.circle, color: Colors.green, size: 10),
                        //                   ],
                        //                 ),
                        //                 const Padding(
                        //                   padding: EdgeInsets.only(left: 10),
                        //                   child: Text("Cheesy-7 Pizza"),
                        //                 ),
                        //                 Padding(
                        //                     padding: getPadding(
                        //                         left: 4, bottom: 2),
                        //                     child: Text("x1",
                        //                         overflow: TextOverflow
                        //                             .ellipsis,
                        //                         textAlign:
                        //                         TextAlign.left,
                        //                         style: AppStyle
                        //                             .txtRobotoRegular12Bluegray300))
                        //               ]))),
                        //       Padding(
                        //         padding: getPadding(
                        //           bottom: 1,
                        //         ),
                        //         child: Text(
                        //           "\$6.0",
                        //           overflow: TextOverflow.ellipsis,
                        //           textAlign: TextAlign.left,
                        //           style: AppStyle.txtRobotoMedium14Gray90001,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: getPadding(
                        //     left: 20,
                        //     top: 12,
                        //     right: 20,
                        //   ),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Align(
                        //           alignment: Alignment.centerLeft,
                        //           child: Padding(
                        //               padding:
                        //               getPadding(left: 19),
                        //               child: Row(children: [
                        //                 const Stack(
                        //                   alignment: Alignment.center,
                        //                   children: [
                        //                     Icon(Icons.crop_square_sharp, color: Colors.green, size: 30,),
                        //                     Icon(Icons.circle, color: Colors.green, size: 10),
                        //                   ],
                        //                 ),
                        //                 const Padding(
                        //                   padding: EdgeInsets.only(left: 10),
                        //                   child: Text("Paneer Tikka Butter Masala"),
                        //                 ),
                        //                 Padding(
                        //                     padding: getPadding(
                        //                         left: 6, bottom: 1),
                        //                     child: Text("x1",
                        //                         overflow: TextOverflow
                        //                             .ellipsis,
                        //                         textAlign:
                        //                         TextAlign.left,
                        //                         style: AppStyle
                        //                             .txtRobotoRegular12Bluegray300))
                        //               ]))),
                        //       Text(
                        //         "\$6.0",
                        //         overflow: TextOverflow.ellipsis,
                        //         textAlign: TextAlign.left,
                        //         style: AppStyle.txtRobotoMedium14Gray90001,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(335.00),
                            margin: getMargin(top: 19),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray300)),
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
                        if(widget.arguments["status"] != "Rejected") ...[
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
                                ],
                        // Container(
                                  //     width: getHorizontalSize(119.00),
                                  //     margin: getMargin(top: 1),
                                  //     child: Text(
                                  //         "Item Total\n\nDelivery Fees\n\nTotal Discount\n\nTaxes and Charges",
                                  //         maxLines: null,
                                  //         textAlign: TextAlign.left,
                                  //         style: AppStyle
                                  //             .txtRobotoMedium14Bluegray300)),
                                  // Container(
                                  //     width: getHorizontalSize(44.00),
                                  //     margin: getMargin(bottom: 1),
                                  //     child: RichText(
                                  //         text: TextSpan(children: [
                                  //           TextSpan(
                                  //               text: "\$${widget.arguments["item_total"]}\n\n\$${widget.arguments["delivery_fee"]}\n\n",
                                  //               style: TextStyle(
                                  //                   color: ColorConstant.gray900,
                                  //                   fontSize: getFontSize(14),
                                  //                   fontFamily: 'Roboto',
                                  //                   fontWeight: FontWeight.w500)),
                                  //           TextSpan(
                                  //               text: "-\$${widget.arguments["Taxes and Charges"]}\n\n",
                                  //               style: TextStyle(
                                  //                   color: ColorConstant.teal300,
                                  //                   fontSize: getFontSize(14),
                                  //                   fontFamily: 'Roboto',
                                  //                   fontWeight: FontWeight.w500)),
                                  //           TextSpan(
                                  //               text: "\$${widget.arguments["taxes_charges"]}",
                                  //               style: TextStyle(
                                  //                   color: ColorConstant.gray900,
                                  //                   fontSize: getFontSize(14),
                                  //                   fontFamily: 'Roboto',
                                  //                   fontWeight: FontWeight.w500))
                                  //         ]),
                                  //         textAlign: TextAlign.right))
                                // ])),
                        if(widget.arguments["status"] != "Rejected") ...[
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
                        ],
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
                                padding: getPadding(left: 19, top: 17),
                                child: Text("Order Details",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium16Gray900))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 19, top: 27),
                                child: Text("Payment Method",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12))),
                        Padding(
                            padding: getPadding(left: 19, top: 6, right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("${widget.arguments["payment_method"]}",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray900)),
                                  Container(
                                      width: getHorizontalSize(70.00),
                                      padding: getPadding(
                                          left: 7, top: 2, right: 7, bottom: 2),
                                      decoration: AppDecoration.txtOutlineGray300
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .txtCircleBorder12),
                                      child: Text(widget.arguments["payment_method"] != null ? "Paid" : "to be paid",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular12Black900))
                                ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 19, top: 26),
                                child: Text("Deliver to",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12))),
                        Padding(
                            padding: getPadding(left: 19, top: 3, right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 4),
                                      child: Text("${widget.arguments["user_name"]} | ${widget.arguments["user_phone"]}",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray900)),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgCallTeal300,
                                      height: getSize(24.00),
                                      width: getSize(24.00)),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgContrast,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      margin: getMargin(left: 9))
                                ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 19, top: 29),
                                child: Text("Delivery Address",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 19, top: 7),
                                child: Text("${widget.arguments["delivery_address"]}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16Gray900))),
                        Container(
                            margin: getMargin(
                                left: 20, top: 20, right: 20, bottom: 5),
                            padding: getPadding(all: 10),
                            decoration: AppDecoration.outlineGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                            if(widget.arguments["status"] != "Rejected") ...[
                            CustomImageView(
                                      imagePath: ImageConstant.imgRectangle4334,
                                      height: getSize(25.00),
                                      width: getSize(25.00),
                                      radius: BorderRadius.circular(
                                          getHorizontalSize(12.00)),
                                      margin: getMargin(bottom: 8)),
                                  Padding(
                                      padding: getPadding(left: 8),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("${widget.arguments["user_name"]} delivered order",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12Gray900),
                                            Padding(
                                                padding: getPadding(top: 5),
                                                child: Text("OTP: XXXX",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular10))
                                          ])),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgCallTeal300,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      margin: getMargin(top: 4, bottom: 4)),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgContrast,
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      margin: getMargin(
                                          left: 9, top: 4, right: 3, bottom: 4))
                        ] else ...[
                          const Text("item is out Of Stock, Thats why Order Rejected", style: TextStyle(color: Colors.red),),
                            ]
                                ]))
                      ])),
            ),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgRectangle,
                          height: getVerticalSize(5.00),
                          width: getHorizontalSize(48.00),
                          radius:
                              BorderRadius.circular(getHorizontalSize(2.00)),
                          margin: getMargin(bottom: 3))
                    ]))));
  }

  onTapArrowleft63(BuildContext context) {
    Navigator.pop(context);
  }
}
