import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class Group34126Screen extends StatelessWidget {
  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              width: getHorizontalSize(335.00),
              padding: getPadding(left: 1, top: 33, right: 1, bottom: 33),
              decoration: AppDecoration.fillWhiteA700
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Order Reject",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium24Black900),
                    Container(
                        height: getVerticalSize(1.00),
                        width: getHorizontalSize(333.00),
                        margin: getMargin(top: 15),
                        decoration:
                            BoxDecoration(color: ColorConstant.gray300)),
                    Padding(
                        padding: getPadding(left: 19, top: 18, right: 27),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Order ID: 154780 ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium14),
                              Padding(
                                  padding: getPadding(bottom: 1),
                                  child: Text("6:26 PM",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtRobotoMedium12Bluegray500))
                            ])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: getHorizontalSize(267.00),
                            margin: getMargin(left: 19, top: 17),
                            child: Text(
                                "Are you sure you want to reject this order ?",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular16Gray900))),
                    CustomDropDown(
                        width: 295,
                        focusNode: FocusNode(),
                        icon: Container(
                            margin: getMargin(left: 30, right: 19),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowdownBlack900)),
                        hintText: "Select rejection result",
                        margin: getMargin(top: 23),
                        variant: DropDownVariant.OutlineIndigo900,
                        padding: DropDownPadding.PaddingT17,
                        fontStyle: DropDownFontStyle.RobotoRegular12,
                        items: dropdownItemList,
                        onChanged: (value) {}),
                    Container(
                        height: getVerticalSize(115.00),
                        width: getHorizontalSize(295.00),
                        margin: getMargin(top: 6, bottom: 44),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: getPadding(right: 5, bottom: 8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(290.00),
                                            padding: getPadding(
                                                left: 119,
                                                top: 13,
                                                right: 119,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray9004f
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder24),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("Submit",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoBold16WhiteA700))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 18),
                                            child: Text("Cancel",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoBold16Bluegray300))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  padding: getPadding(
                                      left: 20, top: 18, right: 20, bottom: 18),
                                  decoration: AppDecoration.outlineGray300
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtDescription(context);
                                            },
                                            child: Container(
                                                width:
                                                    getHorizontalSize(141.00),
                                                child: Text(
                                                    "Restaurant is  closed now\n\nItem is out of stock\n\nChef is not available",
                                                    maxLines: null,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular12Gray900)))
                                      ])))
                        ]))
                  ]))
        ])));
  }

  onTapTxtDescription(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.group18137Screen);
  }
}
