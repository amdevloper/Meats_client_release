import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

class SignUpScreenMember extends StatefulWidget {
  @override
  State<SignUpScreenMember> createState() => _SignUpScreenMemberState();
}

class _SignUpScreenMemberState extends State<SignUpScreenMember> {
  List<String> dropdownItemList = [
    "Influencer",
    "Establishment",
    "Member",
    "Delivery"
  ];

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController controlsTextTwoController = TextEditingController();

  TextEditingController controlsTextThreeController = TextEditingController();

  TextEditingController controlsTextFourController = TextEditingController();

  TextEditingController facebookController = TextEditingController();

  TextEditingController googleController = TextEditingController();
  TextEditingController establishmentNameController = TextEditingController();
  TextEditingController establishmentSurNameController = TextEditingController();



  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String establishmentType = '';

  Future<dynamic> createAlbum(BuildContext context) async {
    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/auth/signup'),
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        "firstName": establishmentNameController.value.text,
        "lastName" : establishmentSurNameController.value.text,
        "email" : controlsTextTwoController.value.text,
        "password" : controlsTextThreeController.value.text,
        "roles" : ["user"]

        // 'firstName': words[0].toString(),
        // 'lastName': words[1].toString(),
        // 'email': "xysss@gmail.com",
        // 'password': controlsTextThreeController.value.text,
        // 'roles': ["Establishment"],
      }),
    );


    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.

      // String rawCookie = response.headers['set-cookie']!;
      // int index = rawCookie.indexOf(';');
      // String refreshToken = (index == -1) ? rawCookie : rawCookie.substring(0, index);
      // int idx = refreshToken.indexOf("=");
      // print(refreshToken.substring(idx+1).trim());

      Navigator.pushNamed(context, AppRoutes.signInScreen);
      return response.body;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  String? validatePassword(String value) {
    RegExp regex =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'Should contain at least one upper case, lower case,\ndigit, Special character and Must be at least 8 characters \nin length';
      } else {
        return null;
      }
    }
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
                height: getVerticalSize(48.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 12, bottom: 12),
                    onTap: () => onTapArrowleft14(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "Sign Up"),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Align(
                              //     alignment: Alignment.centerLeft,
                              //     child: Padding(
                              //         padding: getPadding(left: 20, top: 23),
                              //         child: Text("Sign up as",
                              //             overflow: TextOverflow.ellipsis,
                              //             textAlign: TextAlign.left,
                              //             style: AppStyle
                              //                 .txtRobotoRegular14Gray900))),
                              // CustomDropDown(
                              //     width: 335,
                              //     focusNode: FocusNode(),
                              //     icon: Container(
                              //         margin: getMargin(left: 30, right: 12),
                              //         child: CustomImageView(
                              //             svgPath: ImageConstant
                              //                 .imgArrowdownBlack900)),
                              //     hintText: "Establishment",
                              //     margin: getMargin(top: 9),
                              //     fontStyle: DropDownFontStyle.RobotoMedium16,
                              //     items: dropdownItemList,
                              //     onChanged: (value) {
                              //       establishmentType = value;
                              //     }),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: establishmentNameController,
                                  hintText: "Establishment first name",
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return 'Please Enter first name';
                                    }
                                    return null;
                                  },
                                  margin: getMargin(top: 20),
                                  variant:
                                  TextFormFieldVariant.OutlineIndigo900,
                                  fontStyle:
                                  TextFormFieldFontStyle.RobotoRegular16Bluegray300),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: establishmentSurNameController,
                                  hintText: "Establishment last name",
                                  margin: getMargin(top: 20),
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return 'Please Enter last Name';
                                    }
                                    return null;
                                  },
                                  variant:
                                  TextFormFieldVariant.OutlineIndigo900,
                                  fontStyle:
                                  TextFormFieldFontStyle.RobotoRegular16Bluegray300),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextTwoController,
                                  hintText: "Establishment Email",
                                  validator: (input) => input!.isValidEmail() ? null : "Check your email",
                                  margin: getMargin(top: 20),
                                  textInputType: TextInputType.emailAddress),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextThreeController,
                                  validator: (input) => validatePassword(input!),
                                  hintText: "Password",
                                  margin: getMargin(top: 20),
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextFourController,
                                  hintText: "Confirm Password",
                                  validator: (val){
                                    if(val!.isEmpty) {
                                      return 'Empty';
                                    }
                                    if(val != controlsTextThreeController.text) {
                                      return 'Password Not Matched';
                                    }
                                    return null;
                                  },

                                  margin: getMargin(top: 20),
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(289.00),
                                      margin: getMargin(left: 20, top: 15),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                "By continuing, you agree to our ",
                                                style: TextStyle(
                                                    color:
                                                    ColorConstant.gray900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                    FontWeight.w400)),
                                            TextSpan(
                                                text: "Terms of Service",
                                                style: TextStyle(
                                                    color:
                                                    ColorConstant.gray90001,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                    FontWeight.w400)),
                                            TextSpan(
                                                text: " and ",
                                                style: TextStyle(
                                                    color:
                                                    ColorConstant.gray900,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                    FontWeight.w400)),
                                            TextSpan(
                                                text: "Privacy Policy.",
                                                style: TextStyle(
                                                    color:
                                                    ColorConstant.gray90001,
                                                    fontSize: getFontSize(12),
                                                    fontFamily: 'Roboto',
                                                    fontWeight:
                                                    FontWeight.w400))
                                          ]),
                                          textAlign: TextAlign.left))),
                              CustomButton(
                                  height: 48,
                                  width: 335,
                                  text: "Next",
                                  margin: getMargin(top: 15),
                                  onTap: () {
    if (_formKey.currentState!.validate()) {
      createAlbum(context);
    }
                                  }),
                              Container(
                                  height: getVerticalSize(19.00),
                                  width: getHorizontalSize(293.00),
                                  margin: getMargin(top: 15),
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
                                        CustomImageView(
                                            svgPath:
                                            ImageConstant.imgGroup17868,
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(293.00),
                                            alignment: Alignment.topCenter,
                                            margin: getMargin(top: 6))
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
                                      padding: getPadding(top: 15, bottom: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Text("Already have an account? ",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Gray900),
                                            Padding(
                                                padding: getPadding(left: 4),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.pushNamed(context, AppRoutes.signInScreen);
                                                  },
                                                  child: Text("Sign In",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoBold16Gray90001
                                                          .copyWith(
                                                          decoration:
                                                          TextDecoration
                                                              .underline)),
                                                ))
                                          ]))),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 24),
                                  padding: getPadding(
                                      left: 163, top: 8, right: 163, bottom: 8),
                                  decoration: AppDecoration.fillWhiteA700
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .customBorderTL16),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgRectangle,
                                            height: getVerticalSize(5.00),
                                            width: getHorizontalSize(48.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(2.00)),
                                            margin: getMargin(bottom: 3))
                                      ]))
                            ]))))));
  }

  onTapNext(BuildContext context) {


    // Navigator.pushNamed(context, AppRoutes.establishmentDetailsScreen);
  }

  onTapRowconfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  onTapArrowleft14(BuildContext context) {
    Navigator.pop(context);
  }
}
