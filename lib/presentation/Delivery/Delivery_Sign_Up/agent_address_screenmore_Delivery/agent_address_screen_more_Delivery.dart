import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/app_bar/appbar_image.dart';
import '../../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_radio_button.dart';
import '../../../../widgets/custom_search_view.dart';
import '../../../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AgentAddressScreen extends StatelessWidget {
  String radioGroup = "";

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
                    onTap: () => onTapArrowleft15(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "More Information"),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 18, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomRadioButton(
                                  text: "Personal Details",
                                  iconSize: 24,
                                  value: "msg_personal_details" "",
                                  groupValue: radioGroup,
                                  fontStyle: RadioFontStyle.RobotoRegular16,
                                  onChange: (value) {
                                    radioGroup = value;
                                  }),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 18),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 16, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Agent Address",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoBold16),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgArrowdown,
                                            height: getVerticalSize(6.00),
                                            width: getHorizontalSize(12.00),
                                            margin:
                                                getMargin(top: 5, bottom: 7))
                                      ])),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 19),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomSearchView(
                                            width: 335,
                                            focusNode: FocusNode(),
                                            controller:
                                                barsSearchBarsController,
                                            hintText: "Search Location",
                                            prefix: Container(
                                                margin: getMargin(
                                                    left: 8,
                                                    top: 10,
                                                    right: 12,
                                                    bottom: 10),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgSearch)),
                                            prefixConstraints: BoxConstraints(
                                                maxHeight:
                                                    getVerticalSize(36.00)),
                                            suffix: Padding(
                                                padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                        15.00)),
                                                child: IconButton(
                                                    onPressed: () {
                                                      barsSearchBarsController
                                                          .clear;
                                                    },
                                                    icon: Icon(Icons.clear,
                                                        color: Colors
                                                            .grey.shade600))),
                                            suffixConstraints: BoxConstraints(
                                                maxHeight:
                                                    getVerticalSize(36.00))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20, top: 20),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocationGray90001,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 9,
                                                          top: 1,
                                                          bottom: 3),
                                                      child: Text(
                                                          "Use Current Location",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16))
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
                                            controller:
                                                controlsTextOneController,
                                            hintText: "Postcode",
                                            margin: getMargin(top: 20)),
                                        CustomTextFormField(
                                            width: 335,
                                            focusNode: FocusNode(),
                                            controller:
                                                controlsTextTwoController,
                                            hintText: "City",
                                            margin: getMargin(top: 20),
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomButton(
                                            height: 48,
                                            width: 335,
                                            text: "Save & Next",
                                            margin: getMargin(top: 20),
                                            onTap: () => onTapSavenext(context))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 20),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 14, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Vehicle Details",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular16Black900),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray30012x6,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00),
                                            margin:
                                                getMargin(top: 4, bottom: 2))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 19),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 15, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("PAN Card ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular16Black900),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray30012x6,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00),
                                            margin:
                                                getMargin(top: 4, bottom: 2))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 19),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 16, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Driving License",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular16Black900),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray30012x6,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00),
                                            margin:
                                                getMargin(top: 2, bottom: 4))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 17),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 16, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Emergency Contact",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular16Black900),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlueGray30012x6,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(6.00),
                                            margin:
                                                getMargin(top: 2, bottom: 4))
                                      ]))
                            ])))),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
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

  onTapSavenext(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.vehicleDetailsScreen);
  }

  onTapArrowleft15(BuildContext context) {
    Navigator.pop(context);
  }
}
