import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../routes/app_routes.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/app_bar/appbar_image.dart';
import '../../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_drop_down.dart';
import '../../../../widgets/custom_icon_button.dart';
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
class EmergencyContactScreen extends StatelessWidget {
  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  String radioGroup3 = "";

  TextEditingController controlsTextController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

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
                    onTap: () => onTapArrowleft27(context)),
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
                              padding: getPadding(left: 20, top: 18, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1, bottom: 3),
                                        child: Text("PAN Card ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtRobotoBold16Bluegray300)),
                                    CustomIconButton(
                                        height: 24,
                                        width: 24,
                                        shape: IconButtonShape.CircleBorder12,
                                        child: CustomImageView(
                                            svgPath: ImageConstant
                                                .imgCheckmarkWhiteA700))
                                  ])),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 18),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          Padding(
                              padding: getPadding(top: 18),
                              child: CustomRadioButton(
                                  text: "Driving License",
                                  iconSize: 24,
                                  value: "lbl_driving_license" "",
                                  groupValue: radioGroup3,
                                  margin: getMargin(top: 18),
                                  onChange: (value) {
                                    radioGroup3 = value;
                                  })),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 18),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          Padding(
                              padding: getPadding(left: 20, top: 18, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Emergency Contact",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold16),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown,
                                        height: getVerticalSize(6.00),
                                        width: getHorizontalSize(12.00),
                                        margin: getMargin(top: 5, bottom: 7))
                                  ])),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "Name",
                              margin: getMargin(top: 19),
                              textInputAction: TextInputAction.done),
                          Container(
                              margin: getMargin(left: 20, top: 20, right: 20),
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.outlineGray300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgUnitedstatesof,
                                        height: getVerticalSize(15.00),
                                        width: getHorizontalSize(20.00),
                                        margin: getMargin(top: 2, bottom: 3)),
                                    CustomDropDown(
                                        width: 39,
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin: getMargin(left: 7),
                                            child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBlack900)),
                                        hintText: "+1",
                                        margin: getMargin(left: 4, bottom: 1),
                                        variant: DropDownVariant.None,
                                        items: dropdownItemList,
                                        onChanged: (value) {}),
                                    Padding(
                                        padding: getPadding(
                                            left: 16, right: 114, bottom: 1),
                                        child: Text("Mobile Number",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoBold16Bluegray300))
                                  ])),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Save & Next",
                              margin: getMargin(top: 20, bottom: 5),
                              onTap: () => onTapSavenext(context))
                        ]))),
        ));
  }

  onTapSavenext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.walletSetupScreen);
  }

  onTapArrowleft27(BuildContext context) {
    Navigator.pop(context);
  }
}
