
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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
import '../../widgets/custom_checkbox.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import '../bottom_navigation_tab_bar.dart';
// import '../Influencer/profile_setup_screen/profile_setup_screen.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}


class _SignInScreenState extends State<SignInScreen> {
  List<String> dropdownItemList = [
    "Establishment",
    "Influencer",
    "Member",
    "Delivery"
  ];

  bool checkbox2 = false;


  TextEditingController emailController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();

  TextEditingController group17864Controller = TextEditingController();

  TextEditingController group17865Controller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String signUpAs = "Establishment";

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



  // final bool emailValid =
  // RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //     .hasMatch(email);

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
                    onTap: () => onTapArrowleft7(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "Log In"),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
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
                                  items: dropdownItemList,
                                  onChanged: (value) {}),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  hintText: "Please enter your email",
                                  margin: getMargin(top: 19),
                                  validator: (input) => input!.isValidEmail() ? null : "Check your email",
                                  // isClickEnabled: true,
                                  variant:
                                      TextFormFieldVariant.OutlineIndigo900,
                                  // fontStyle:
                                  //     TextFormFieldFontStyle.RobotoMedium16,
                                  textInputType: TextInputType.emailAddress),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextOneController,
                                  hintText: "Password",
                                  margin: getMargin(top: 20),
                                  validator: (input) => validatePassword(input!),
                                  // maxLines: 2,
                                  textInputType: TextInputType.visiblePassword,
                                  isObscureText: true),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 16, right: 20),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.end,
                                      children: [
                                        CustomCheckbox(
                                          alignment: Alignment.centerLeft,
                                          text: "Stay Signed in",
                                          iconSize: 24,
                                          value: checkbox2,
                                          padding: getPadding(
                                            left: 0,
                                          ),
                                          onChange: (value) {
                                            setState(() {
                                              checkbox2 = value;
                                            });
                                          },
                                        ),
                                        // Text("Stay Signed in",
                                        //     overflow: TextOverflow.ellipsis,
                                        //     textAlign: TextAlign.left,
                                        //     style: AppStyle
                                        //         .txtRobotoRegular12Gray900),
                                        Spacer(),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtForgotPassword(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 3, bottom: 1),
                                                child: Text("Forgot Password?",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium16Indigo900)))
                                      ])),
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
                                text: "Login",
                                margin: getMargin(top: 28),
                                onTap: () async {
                                  // showMessageView();
                                  // if (_formKey.currentState!.validate()) {
                                     // if(dropdownItemList[0].toString() == dropdownItemList[0].toString()) {
                                    //   // if(dropdownItemList[0].toString() == "Influencer") {
                                    //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileSetupScreen()));
                                    //   // }
                                    Map<dynamic, dynamic> data = await createAlbum();
                                        final SharedPreferences prefs = await SharedPreferences.getInstance();
                                        await prefs.setString('token', data["token"]);
                                        await prefs.setInt('id', data["id"]);



                                        // Map<String, dynamic> dataV = await restaruntById();
                                        // print("Amit Amit Amit ${dataV["response"]["menu"]}");
                                        // prefs.setString("menuId", dataV["response"]["menu"]);


                                        if(data["firstLogin"] == false) {
                                          // if(data["roles"][0] == "ROLE_ESTABLISHMENT") {
                                          //   Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                          //       BottomNavigationTabBar(
                                          //         arguments: dropdownItemList[0].toString(),)));
                                          // }else {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                                BottomNavigationTabBar(
                                                  arguments: dropdownItemList[2].toString(),)));
                                          // }
                                        }else {
                                          Navigator.pushNamed(context, AppRoutes.establishmentDetailsScreen);
                                        }

                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigationTabBar(arguments: dropdownItemList[0].toString(),)));
                                    // }
                                  // }
                                },
                              ),
                              // CustomButton(
                              //   height: 48,
                              //   width: 335,
                              //   text: "Login I",
                              //   margin: getMargin(top: 28),
                              //   onTap: () {
                              //     if (_formKey.currentState!.validate()) {
                              //       if(dropdownItemList[0].toString() == dropdownItemList[0].toString()) {
                              //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigationTabBar(arguments: dropdownItemList[1].toString(),)));
                              //       }
                              //     }
                              //   },
                              // ),
                              // CustomButton(
                              //   height: 48,
                              //   width: 335,
                              //   text: "Login M",
                              //   margin: getMargin(top: 28),
                              //   onTap: () {
                              //     if (_formKey.currentState!.validate()) {
                              //       if(dropdownItemList[0].toString() == dropdownItemList[0].toString()) {
                              //         Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigationTabBar(arguments: dropdownItemList[2].toString(),)));
                              //       }
                              //     }
                              //   },
                              // ),
                              // CustomButton(
                              //   height: 48,
                              //   width: 335,
                              //   text: "Login D",
                              //   margin: getMargin(top: 28),
                              //   onTap: () {
                              //     if (_formKey.currentState!.validate()) {
                              //       if(dropdownItemList[0].toString() == dropdownItemList[0].toString()) {
                              //
                              //
                              //         createAlbum();
                              //
                              //
                              //         // Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavigationTabBar(arguments: dropdownItemList[3].toString(),)));
                              //       }
                              //     }
                              //   },
                              // ),

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
                                        // CustomImageView(
                                        //     svgPath:
                                        //         ImageConstant.imgGroup17868,
                                        //     height: getVerticalSize(1.00),
                                        //     width: getHorizontalSize(293.00),
                                        //     alignment: Alignment.topCenter,
                                        //     margin: getMargin(top: 7))
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
                                      child: GestureDetector(
                                        onTap: () {

                                        },
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
                                        ),
                                      ))),
                              //       Padding(
                        //           padding:getPadding(top: 18, left: MediaQuery.of(context).size.width/4),
                        // child: Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.spaceBetween,
                        //               children: [
                        //                 // CustomTextFormField(
                        //                 //     width: 139,
                        //                 //     focusNode: FocusNode(),
                        //                 //     controller: group17864Controller,
                        //                 //     hintText: "FACEBOOK",
                        //                 //     variant: TextFormFieldVariant
                        //                 //         .OutlineGray300_1,
                        //                 //     shape: TextFormFieldShape
                        //                 //         .CircleBorder27,
                        //                 //     padding:
                        //                 //         TextFormFieldPadding.PaddingT16,
                        //                 //     fontStyle: TextFormFieldFontStyle
                        //                 //         .RobotoMedium13,
                        //                 //     prefix: Container(
                        //                 //         margin: getMargin(
                        //                 //             left: 12,
                        //                 //             top: 12,
                        //                 //             right: 8,
                        //                 //             bottom: 12),
                        //                 //         child: CustomImageView(
                        //                 //             svgPath: ImageConstant
                        //                 //                 .imgFacebook)),
                        //                 //     prefixConstraints: BoxConstraints(
                        //                 //         maxHeight:
                        //                 //             getVerticalSize(54.00))),
                        //                 CustomTextFormField(
                        //                     width: 139,
                        //                     focusNode: FocusNode(),
                        //                     controller: group17865Controller,
                        //                     hintText: "GOOGLE",
                        //                     variant: TextFormFieldVariant
                        //                         .OutlineGray300_1,
                        //                     shape: TextFormFieldShape
                        //                         .CircleBorder27,
                        //                     padding:
                        //                         TextFormFieldPadding.PaddingT16,
                        //                     fontStyle: TextFormFieldFontStyle
                        //                         .RobotoMedium13,
                        //                     textInputAction:
                        //                         TextInputAction.done,
                        //                     prefix: Container(
                        //                         margin: getMargin(
                        //                             left: 12,
                        //                             top: 13,
                        //                             right: 15,
                        //                             bottom: 12),
                        //                         child: CustomImageView(
                        //                             svgPath: ImageConstant
                        //                                 .imgGoogle)),
                        //                     prefixConstraints: BoxConstraints(
                        //                         maxHeight:
                        //                             getVerticalSize(54.00)))
                        //               ])),
                              Padding(
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
                                        GestureDetector(
                                          onTap: () {
                                            // onTapRowconfirmation(context);
                                            showModalBottomSheet<void>(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return FractionallySizedBox(
                                                      heightFactor: 0.55,
                                                      child: Align(
                                                        alignment: Alignment.topCenter,
                                                        child: Container(
                                                          padding: getPadding(
                                                              top: 20,
                                                              bottom: 8),
                                                          child: Column(
                                                            children: [
                                                              CustomDropDown(
                                                                  width: 335,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  icon: Container(
                                                                      margin:
                                                                          getMargin(
                                                                              left:
                                                                                  30,
                                                                              right:
                                                                                  12),
                                                                      child: CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant
                                                                                  .imgArrowdownBlack900)),
                                                                  hintText:
                                                                      "Establishment",
                                                                  margin: getMargin(
                                                                      top: 9),
                                                                  fontStyle:
                                                                      DropDownFontStyle
                                                                          .RobotoMedium16,
                                                                  items:
                                                                      dropdownItemList,
                                                                  onChanged:
                                                                      (value) {
                                                                        signUpAs = value;
                                                                      }),
                                                              CustomButton(
                                                                height: 48,
                                                                width: 335,
                                                                text: "Submit",
                                                                margin: getMargin(top: 28),
                                                                onTap: () {
                                                                  // if (_formKey.currentState!.validate()) {
                                                                    if(signUpAs == dropdownItemList[0]) {
                                                                      Navigator
                                                                          .pushNamed(
                                                                          context,
                                                                          AppRoutes
                                                                              .signUpScreenEstablishment);
                                                                    }else if(signUpAs == dropdownItemList[1]) {
                                                                      Navigator
                                                                          .pushNamed(
                                                                          context,
                                                                          AppRoutes
                                                                              .signUpScreenInfluencer);

                                                                    }else if(signUpAs == dropdownItemList[2]) {
                                                                      Navigator
                                                                          .pushNamed(
                                                                          context,
                                                                          AppRoutes
                                                                              .signUpScreenInMember);

                                                                    }else if(signUpAs == dropdownItemList[3]) {
                                                                      Navigator
                                                                          .pushNamed(
                                                                          context,
                                                                          AppRoutes
                                                                              .signUpScreenDelivery);
                                                                    }
                                                                  // }
                                                                },
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ));
                                                });
                                          },
                                          child: Padding(
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
                                                                  .underline))),
                                        )
                                      ])),
                            ]))))));
  }


  Future<Map<dynamic, dynamic>> createAlbum() async {
    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/auth/signin'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "email" : "172121dda@gmail.com",
        "password" : "Password",
      }),
    );
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to signIn');
    }
  }

  Future<Map<String, dynamic>> restaruntById() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/restaurant"),
    )..headers.addAll({
      'Content-Type': 'application/json',
      'Authorization': token!,
    });
    var params = {"id": userId};
    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    return object;
  }


  Future showMessageView() {
    return showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
            title: const Text("Logged in successfully"),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget> [
                  Text("Coming Soon"),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: ()
          {
            Navigator.of(context).pop();
          },
          child: Text("ok"),
          ),
         ],
          );
        });

  }

  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  onTapRowconfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
