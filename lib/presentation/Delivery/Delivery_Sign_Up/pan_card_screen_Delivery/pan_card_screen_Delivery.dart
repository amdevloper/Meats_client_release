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
import '../../../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PanCardScreen extends StatelessWidget {
  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController controlsTextTwoController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                    onTap: () => onTapArrowleft18(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "More Information"),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding: getPadding(top: 18, bottom: 18),
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
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: CustomRadioButton(
                                  text: "Agent Address",
                                  iconSize: 24,
                                  value: "lbl_agent_address" "",
                                  groupValue: radioGroup1,
                                  margin: getMargin(top: 18),
                                  onChange: (value) {
                                    radioGroup1 = value;
                                  })),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 18),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: CustomRadioButton(
                                  text: "Vehicle Details",
                                  iconSize: 24,
                                  value: "lbl_vehicle_details" "",
                                  groupValue: radioGroup2,
                                  margin: getMargin(top: 18),
                                  onChange: (value) {
                                    radioGroup2 = value;
                                  })),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 18),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          Padding(
                              padding: getPadding(left: 20, top: 17, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("PAN Card ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold16Bluegray300),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown,
                                        height: getVerticalSize(6.00),
                                        width: getHorizontalSize(12.00),
                                        margin: getMargin(top: 7, bottom: 5))
                                  ])),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "PAN Number",
                              margin: getMargin(top: 21),
                              textInputType: TextInputType.number),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextOneController,
                              hintText: "Full Name",
                              margin: getMargin(top: 20)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextTwoController,
                              hintText: "Upload Copy of PAN card",
                              margin: getMargin(top: 20),
                              padding: TextFormFieldPadding.PaddingT13,
                              textInputAction: TextInputAction.done,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 15, right: 9, bottom: 17),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgCameraBlueGray300)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(50.00))),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Save & Next",
                              margin: getMargin(top: 20),
                              onTap: () => onTapSavenext(context)),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 20),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          Padding(
                              padding: getPadding(left: 20, top: 16, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        margin: getMargin(top: 2, bottom: 4))
                                  ])),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 17),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          Padding(
                              padding: getPadding(
                                  left: 20, top: 16, right: 20, bottom: 5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                        margin: getMargin(top: 2, bottom: 4))
                                  ]))
                        ]))),
        ));
  }

  onTapSavenext(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.drivingLicenseScreen);
 }

  onTapArrowleft18(BuildContext context) {
    Navigator.pop(context);
  }
}
