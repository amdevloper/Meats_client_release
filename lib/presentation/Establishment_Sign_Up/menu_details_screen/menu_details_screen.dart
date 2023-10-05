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
import '../../../widgets/custom_radio_button.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MenuDetailsScreen extends StatelessWidget {
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
                height: getVerticalSize(48.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 12, bottom: 12),
                    onTap: () => onTapArrowleft21(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: " Establishment  Details"),
                styleType: Style.bgFillWhiteA700),
            body: Container(
                width: size.width,
                padding: getPadding(top: 16, bottom: 16),
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
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: size.width,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(left: 24),
                                              child: Text(
                                                  " Establishment Details",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular16Gray900)),
                                          Container(
                                              height: getVerticalSize(1.00),
                                              width: size.width,
                                              margin: getMargin(top: 21),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.gray300))
                                        ]))),
                            CustomIconButton(
                                height: 24,
                                width: 24,
                                margin: getMargin(right: 20),
                                shape: IconButtonShape.CircleBorder12,
                                alignment: Alignment.topRight,
                                child: CustomImageView(
                                    svgPath:
                                        ImageConstant.imgCheckmarkWhiteA700))
                          ])),
                      Padding(
                          padding: getPadding(top: 15),
                          child: CustomRadioButton(
                              text: " Establishment Location",
                              iconSize: 24,
                              value: "msg_establishment_location2" "",
                              groupValue: radioGroup,
                              margin: getMargin(top: 15),
                              shape: RadioShape.CircleBorder12,
                              fontStyle: RadioFontStyle.RobotoRegular16,
                              onChange: (value) {
                                radioGroup = value;
                              })),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 20),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(top: 15),
                          child: CustomRadioButton(
                              text: " Establishment Timing",
                              iconSize: 24,
                              value: "msg_establishment_timing2" "",
                              groupValue: radioGroup1,
                              margin: getMargin(top: 15),
                              shape: RadioShape.CircleBorder12,
                              fontStyle: RadioFontStyle.RobotoRegular16,
                              onChange: (value) {
                                radioGroup1 = value;
                              })),
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 24, top: 20, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(" Establishment Menu Setup",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular16Black900),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getVerticalSize(6.00),
                                    width: getHorizontalSize(12.00),
                                    margin: getMargin(top: 5, bottom: 7))
                              ])),
                      Padding(
                          padding: getPadding(top: 39),
                          child: Text("Add menu items here.",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16)),
                      CustomButton(
                          height: 48,
                          width: 335,
                          text: "+ Add Item",
                          margin: getMargin(top: 57),
                          onTap: () => onTapAdditem(context)),
                      CustomButton(
                          height: 32,
                          width: 55,
                          text: "Skip",
                          margin: getMargin(top: 20, bottom: 5),
                          variant: ButtonVariant.OutlineGray300,
                          shape: ButtonShape.CircleBorder16,
                          padding: ButtonPadding.PaddingAll9,
                          fontStyle: ButtonFontStyle.SofiaPro14)
                    ])),
        ));
  }

  onTapAdditem(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addItemScreen);
  }

  onTapArrowleft21(BuildContext context) {
    Navigator.pop(context);
  }
}
