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

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreenDelivery extends StatelessWidget {
  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"];

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController controlsTextTwoController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  String radioGroup = "";

  List<String> radioList = ["lbl_male", "lbl_female"];

  TextEditingController controlsTextThreeController = TextEditingController();

  TextEditingController controlsTextFourController = TextEditingController();

  TextEditingController facebookController = TextEditingController();

  TextEditingController googleController = TextEditingController();

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
                    onTap: () => onTapArrowleft13(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "Sign up"),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 23, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20),
                                      child: Text("Sign up as",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRegular14))),
                              CustomDropDown(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 12),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  hintText: "Delivery Agent",
                                  margin: getMargin(top: 9),
                                  // fontStyle: DropDownFontStyle.RobotoMedium16,
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextOneController,
                                  hintText: "Name",
                                  margin: getMargin(top: 20),
                                  // fontStyle:
                                  //     TextFormFieldFontStyle.RobotoMedium16
                              ),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextTwoController,
                                  hintText: "Last Name",
                                  margin: getMargin(top: 20),
                                  // fontStyle:
                                  //     TextFormFieldFontStyle.RobotoMedium16
                              ),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  hintText: "Email Id",
                                  margin: getMargin(top: 13),
                                  variant:
                                      TextFormFieldVariant.OutlineIndigo900,
                                  // fontStyle:
                                  //     TextFormFieldFontStyle.RobotoMedium16,
                                  textInputType: TextInputType.emailAddress),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 21),
                                      child: Text("Select your Gender",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRegular14))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 9),
                                      child: Row(children: [
                                        CustomRadioButton(
                                            text: "Male",
                                            iconSize: 24,
                                            value: radioList[0],
                                            groupValue: radioGroup,
                                            fontStyle:
                                                RadioFontStyle.RobotoRegular16,
                                            onChange: (value) {
                                              radioGroup = value;
                                            }),
                                        CustomRadioButton(
                                            text: "Female",
                                            iconSize: 24,
                                            value: radioList[1],
                                            groupValue: radioGroup,
                                            margin: getMargin(left: 20),
                                            fontStyle:
                                                RadioFontStyle.RobotoRegular16,
                                            onChange: (value) {
                                              radioGroup = value;
                                            })
                                      ]))),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextThreeController,
                                  hintText: "Password",
                                  margin: getMargin(top: 20),
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextFourController,
                                  hintText: "Confirm Password",
                                  margin: getMargin(top: 20),
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              Container(
                                  width: getHorizontalSize(321.00),
                                  margin: getMargin(top: 15),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "By continuing, you agree to our ",
                                            style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "Terms of Service",
                                            style: TextStyle(
                                                color: ColorConstant.gray90001,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: " and ",
                                            style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "Privacy Policy.",
                                            style: TextStyle(
                                                color: ColorConstant.gray90001,
                                                fontSize: getFontSize(12),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400))
                                      ]),
                                      textAlign: TextAlign.left)),
                              CustomButton(
                                  height: 48,
                                  width: 335,
                                  text: "Continue",
                                  margin: getMargin(top: 28), onTap: () {
                                    Navigator.pushNamed(context, AppRoutes.moreInformationsScreen);
                              },),
                              Container(
                                  height: getVerticalSize(19.00),
                                  width: getHorizontalSize(293.00),
                                  margin: getMargin(top: 31),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(" Sign up with",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium16Bluegray300)),
                                        // CustomImageView(
                                        //     svgPath:
                                        //         ImageConstant.imgGroup17868,
                                        //     height: getVerticalSize(1.00),
                                        //     width: getHorizontalSize(293.00),
                                        //     alignment: Alignment.topCenter,
                                        //     margin: getMargin(top: 6))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 18, left: MediaQuery.of(context).size.width/25),
                                  child: Container(
                                      width:139,
                                      height: getVerticalSize(50.00),
                                      // margin: const EdgeInsets.all(15.0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadiusStyle.circleBorder42,
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Row(
                                        children: [
                                          Container(
                                              margin: getMargin(
                                                  left: 12,
                                                  top: 13,
                                                  right: 15,
                                                  bottom: 12),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant.imgGoogle)),
                                          Text("GOOGLE"),
                                          // prefixConstraints: BoxConstraints(
                                          //     maxHeight: getVerticalSize(54.00)
                                          // )
                                        ],
                                      ))),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Already have an account? ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRegular16),
                                        Padding(
                                            padding: getPadding(left: 7),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.pushNamed(context, AppRoutes.signInScreen);
                                              },
                                              child: Text("Sign In",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtRobotoBold16
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline)),
                                            ))
                                      ])),
                            ]))))));
  }

  onTapArrowleft13(BuildContext context) {
    Navigator.pop(context);
  }
}
