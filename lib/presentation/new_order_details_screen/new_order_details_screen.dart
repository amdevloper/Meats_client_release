import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NewOrderDetailsScreen extends StatefulWidget {
  final dynamic arguments;

  const NewOrderDetailsScreen({super.key, this.arguments});

  @override
  State<NewOrderDetailsScreen> createState() => _NewOrderDetailsScreenState();
}

class _NewOrderDetailsScreenState extends State<NewOrderDetailsScreen> {
  TextEditingController group370Controller = TextEditingController();
  TextEditingController rejectedResionController = TextEditingController();



  String radioGroup = "";

  String radioGroup1 = "";

  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  var preparationTime;


  @override
  void initState() {
    // TODO: implement initState
    preparationTime =  widget.arguments!["preparation_time"] ?? 30;
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
                height: getVerticalSize(46.00),
                centerTitle: true,
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 18, top: 8, right: 234),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () => onTapArrowleft56(context)),
                                AppbarSubtitle(
                                    text: "New Order",
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
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height + (widget.arguments["items"].length * 27),
                        width: size.width,
                        child: Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(left: 20, right: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Order ID: ${widget.arguments["id"]}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14),
                                              Text("${widget.arguments["time"]}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoMedium14Bluegray500)
                                            ])),
                                    CustomTextFormField(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.1,
                                        focusNode: FocusNode(),
                                        controller: group370Controller,
                                        hintText:
                                        " ${widget.arguments["items"].length} Orders by ${widget.arguments["user_name"]}",
                                        variant: TextFormFieldVariant
                                            .UnderLineGray300,
                                        fontStyle: TextFormFieldFontStyle
                                            .RobotoRegular10,
                                        textInputAction: TextInputAction.done),
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
                                                        // child: Text("${widget.arguments["items"][indexv]}"),

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
                                                    // "\$ 6",
                                                    "\$ ${widget.arguments["items"][indexv]["price"]}",
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
                                    //     top: 3,
                                    //     right: 20,
                                    //   ),
                                    //   child: Row(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Align(
                                    //           alignment: Alignment.centerLeft,
                                    //           child: Padding(
                                    //               padding: getPadding(top: 10),
                                    //               child: Row(children: [
                                    //                 Stack(
                                    //                   alignment:
                                    //                       Alignment.center,
                                    //                   children: [
                                    //                     Icon(
                                    //                       Icons
                                    //                           .crop_square_sharp,
                                    //                       color: Colors.green,
                                    //                       size: 25,
                                    //                     ),
                                    //                     Icon(Icons.circle,
                                    //                         color: Colors.green,
                                    //                         size: 8),
                                    //                   ],
                                    //                 ),
                                    //                 Padding(
                                    //                   padding:
                                    //                       const EdgeInsets.only(
                                    //                           left: 10),
                                    //                   child: Text(
                                    //                       "Cheesy-7 Pizza"),
                                    //                 ),
                                    //                 Padding(
                                    //                     padding: getPadding(
                                    //                         left: 4, bottom: 2),
                                    //                     child: Text("x1",
                                    //                         overflow:
                                    //                             TextOverflow
                                    //                                 .ellipsis,
                                    //                         textAlign:
                                    //                             TextAlign.left,
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
                                    //           style: AppStyle
                                    //               .txtRobotoMedium14Gray90001,
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    // Padding(
                                    //   padding: getPadding(
                                    //     left: 20,
                                    //     top: 3,
                                    //     right: 20,
                                    //   ),
                                    //   child: Row(
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Align(
                                    //           alignment: Alignment.centerLeft,
                                    //           child: Row(children: [
                                    //             Stack(
                                    //               alignment: Alignment.center,
                                    //               children: [
                                    //                 Icon(
                                    //                   Icons.crop_square_sharp,
                                    //                   color: Colors.green,
                                    //                   size: 25,
                                    //                 ),
                                    //                 Icon(Icons.circle,
                                    //                     color: Colors.green,
                                    //                     size: 8),
                                    //               ],
                                    //             ),
                                    //             Padding(
                                    //               padding:
                                    //                   const EdgeInsets.only(
                                    //                       left: 10),
                                    //               child: Text(
                                    //                   "Paneer Tikka Butter Masala"),
                                    //             ),
                                    //             Padding(
                                    //                 padding: getPadding(
                                    //                     left: 6, bottom: 1),
                                    //                 child: Text("x1",
                                    //                     overflow: TextOverflow
                                    //                         .ellipsis,
                                    //                     textAlign:
                                    //                         TextAlign.left,
                                    //                     style: AppStyle
                                    //                         .txtRobotoRegular12Bluegray300))
                                    //           ])),
                                    //       Text(
                                    //         "\$6.0",
                                    //         overflow: TextOverflow.ellipsis,
                                    //         textAlign: TextAlign.left,
                                    //         style: AppStyle
                                    //             .txtRobotoMedium14Gray90001,
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(335.00),
                                        margin: getMargin(top: 1),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300)),
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
                                    Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(335.00),
                                        margin: getMargin(top: 13),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.gray300,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(1.00)))),
                                    Padding(
                                        padding: getPadding(
                                            left: 20, top: 11, right: 19),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("Grand Total",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRobotoBold14),
                                              Text("\$${widget.arguments["price"]}",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRobotoBold14)
                                            ])),
                                    Container(
                                        height: getVerticalSize(5.00),
                                        width: getHorizontalSize(374.00),
                                        margin: getMargin(top: 15),
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
                                                      getHorizontalSize(70.00),
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
                                                  child: Text("${widget.arguments["user_name"]} | ${widget.arguments["user_phone"]}",
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
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 22, top: 31),
                                            child: Text(
                                                "Set food preparation time",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular12Gray900))),
                                    Container(
                                        margin: getMargin(
                                            left: 20, top: 14, right: 19),
                                        padding: getPadding(
                                            left: 14,
                                            top: 6,
                                            right: 14,
                                            bottom: 6),
                                        decoration: AppDecoration.outlineGray300
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              TextButton(onPressed: () {
                                                setState(() {
                                                  if(preparationTime > 30) {
                                                    preparationTime = preparationTime - 5;
                                                  }
                                                });
                                              }, child: const Icon( // <-- Icon
                                                Icons.remove,
                                              )),
                                              Container(
                                                  height:
                                                      getVerticalSize(35.00),
                                                  width:
                                                      getHorizontalSize(1.00),
                                                  margin: getMargin(left: 17),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .gray300)),
                                              Spacer(flex: 46),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 7, bottom: 8),
                                                  child: Text("$preparationTime min",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray900)),
                                              Spacer(flex: 53),
                                              Container(
                                                  height:
                                                      getVerticalSize(35.00),
                                                  width:
                                                      getHorizontalSize(1.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .gray300)),
                                              TextButton(onPressed: () {
                                                setState(() {
                                                  preparationTime = preparationTime + 5;
                                                });
                                              }, child: const Icon( // <-- Icon
                                                Icons.add,
                                              )),
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomButton(
                                                  height: 53,
                                                  width: 159,
                                                  text: "Reject",
                                                  variant: ButtonVariant
                                                      .OutlineGray9004f_1,
                                                  padding: ButtonPadding
                                                      .PaddingAll16,
                                                  onTap: () =>
                                                      onTapReject(context)),
                                              CustomButton(
                                                onTap: () async {
                                                 await submitAcceptRequest(context);
                                                },
                                                  height: 53,
                                                  width: 159,
                                                  text: "Accept",
                                                  margin: getMargin(left: 14),
                                                  padding: ButtonPadding
                                                      .PaddingAll16)
                                            ]))
                                  ])),
                          // Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child: Container(
                          //         width: size.width,
                          //         margin: getMargin(bottom: 59),
                          //         padding: getPadding(
                          //             left: 163, top: 8, right: 163, bottom: 8),
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

  Future showMessageView(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(20.0)), //this right here
            child: Container(
              height: size.height / 1.9,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        335.00,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Order Reject",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium24Black900,
                          ),
                          Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              333.00,
                            ),
                            margin: getMargin(
                              top: 15,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray300,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 19,
                              top: 18,
                              right: 27,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Order ID: ${widget.arguments["id"]}",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium14,
                                ),
                                Padding(
                                  padding: getPadding(
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "${widget.arguments["time"]}",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium12Bluegray500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                267.00,
                              ),
                              margin: getMargin(
                                left: 19,
                                top: 17,
                              ),
                              child: Text(
                                "Are you sure you want to reject this order ?",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular16Gray900,
                              ),
                            ),
                          ),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: rejectedResionController,
                              hintText: "Select rejection result",
                              margin: getMargin(top: 19),
                              // isClickEnabled: true,
                              variant:
                              TextFormFieldVariant.OutlineIndigo900,
                              // fontStyle:
                              //     TextFormFieldFontStyle.RobotoMedium16,
                              textInputType: TextInputType.emailAddress),

                          CustomButton(
                            onTap: (){
                              submitRejectRequest(context);
                            },
                            height: 48,
                            width: 290,
                            text: "Submit",
                            margin: getMargin(
                              top: 28,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: getPadding(
                                top: 18,
                                bottom: 53,
                              ),
                              child: Text(
                                "Cancel",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoBold16Bluegray300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Future<dynamic> submitRejectRequest(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');


    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/reject/order'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': token!,
      },
      body: jsonEncode({
        "status" : "Rejected",
        "reject_reason" : rejectedResionController.value.text,
        "restaurant_id" : userId,
        "orderId" : widget.arguments["id"]
      }),
    );
    if (response.statusCode == 200) {
      int count = 0;
      Navigator.of(context).popUntil((_) => count++ >= 2);
      // await _asyncMethod();
      // });
    }
  }

  Future<dynamic> submitAcceptRequest(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');

    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/update/order'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': token!,
      },
      body: jsonEncode({
        "status" : "Accepted",
        "id" : widget.arguments["id"],
        "time" : "30"
      }),
    );
    if (response.statusCode == 200) {
      Navigator.pop(context);
      // setState(() async {
      // await _asyncMethod();
      // });
    }
  }


  onTapArrowleft15(BuildContext context) {
    Navigator.pop(context);
  }

  onTapReject(BuildContext context) {
    showMessageView(context);
    // Navigator.pushNamed(context, AppRoutes.group18137Screen);
  }

  onTapArrowleft56(BuildContext context) {
    Navigator.pop(context);
  }
}
