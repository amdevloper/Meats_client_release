import 'package:flutter/material.dart';

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
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignInRoleScreen extends StatelessWidget {
  List<String> dropdownItemList = ["Influencer", "Establishment", "Member", "Delivery"];

  TextEditingController group17864Controller = TextEditingController();

  TextEditingController group17865Controller = TextEditingController();

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
                    onTap: () => onTapArrowleft8(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "Log In"),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 23),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20),
                                      child: Text("Login as",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular14Gray900))),
                              CustomDropDown(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  icon: Container(
                                      margin: getMargin(left: 30, right: 12),
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdownBlack900)),
                                  hintText: "Select",
                                  margin: getMargin(top: 9),
                                  variant: DropDownVariant.OutlineIndigo900,
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              Container(
                                  height: getVerticalSize(296.00),
                                  width: getHorizontalSize(337.00),
                                  margin: getMargin(top: 9),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(left: 2),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  335.00),
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 14,
                                                              right: 16,
                                                              bottom: 14),
                                                          decoration: AppDecoration
                                                              .outlineIndigo900
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder8),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                1),
                                                                    child: Text(
                                                                        "Email Id",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoMedium16
                                                                    ))
                                                              ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  335.00),
                                                          margin: getMargin(
                                                              top: 20),
                                                          padding: getPadding(
                                                              left: 16,
                                                              top: 14,
                                                              right: 16,
                                                              bottom: 14),
                                                          decoration: AppDecoration
                                                              .outlineGray300
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder8),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        bottom:
                                                                            1),
                                                                    child: Text(
                                                                        "Password",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular16))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                CustomIconButton(
                                                                    height: 24,
                                                                    width: 24,
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgCheckmarkWhiteA700)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 9,
                                                                        top: 5,
                                                                        bottom:
                                                                            3),
                                                                    child: Text(
                                                                        "Stay Signed in",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular12Gray900)),
                                                                Spacer(),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 3,
                                                                        bottom:
                                                                            1),
                                                                    child: Text(
                                                                        "Forgot Password?",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoMedium16Indigo900))
                                                              ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  289.00),
                                                          margin: getMargin(
                                                              top: 15),
                                                          child: RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            "By continuing, you agree to our ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray900,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "Terms of Service",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray90001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            " and ",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray900,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontWeight:
                                                                                FontWeight.w400)),
                                                                    TextSpan(
                                                                        text:
                                                                            "Privacy Policy.",
                                                                        style: TextStyle(
                                                                            color: ColorConstant
                                                                                .gray90001,
                                                                            fontSize: getFontSize(
                                                                                12),
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            fontWeight:
                                                                                FontWeight.w400))
                                                                  ]),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left)),
                                                      CustomButton(
                                                          height: 48,
                                                          width: 335,
                                                          text: "Logins",
                                                          margin: getMargin(
                                                              top: 28))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 12,
                                                    right: 20,
                                                    bottom: 12),
                                                decoration: AppDecoration
                                                    .outlineGray3001
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder8),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  76.00),
                                                          margin:
                                                              getMargin(top: 5),
                                                          child: Text(
                                                              "User\r\nEstablishment\r\nInfluencer\r\nDelivery Agent",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular12Gray900))
                                                    ])))
                                      ])),
                              Container(
                                  height: getVerticalSize(19.00),
                                  width: getHorizontalSize(293.00),
                                  margin: getMargin(top: 31),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(" Sign in with",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium16Bluegray300)),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgGroup17868,
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(293.00),
                                            alignment: Alignment.topCenter,
                                            margin: getMargin(top: 7))
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
                              GestureDetector(
                                  onTap: () {
                                    onTapRowconfirmation(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(top: 30),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("Don’t  have an account? ",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Gray900),
                                            Padding(
                                                padding: getPadding(left: 7),
                                                child: Text("Sign Up",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoBold16Gray90001
                                                        .copyWith(
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))
                                          ]))),
                              Container(
                                  height: getVerticalSize(27.00),
                                  width: size.width,
                                  margin: getMargin(top: 118),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    left: 163,
                                                    top: 8,
                                                    right: 163,
                                                    bottom: 8),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgRectangle,
                                                          height:
                                                              getVerticalSize(
                                                                  5.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      2.00)),
                                                          margin: getMargin(
                                                              bottom: 3))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    left: 163,
                                                    top: 8,
                                                    right: 163,
                                                    bottom: 8),
                                                decoration: AppDecoration
                                                    .fillWhiteA700
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL16),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgRectangle,
                                                          height:
                                                              getVerticalSize(
                                                                  5.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      2.00)),
                                                          margin: getMargin(
                                                              bottom: 3))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapRowconfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
