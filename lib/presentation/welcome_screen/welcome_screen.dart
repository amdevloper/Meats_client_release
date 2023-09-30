import 'dart:convert';

// import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
import 'package:google_sign_in/google_sign_in.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../services/auth_service.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
      ),
      title: 'Meats',
      initialRoute: AppRoutes.welcomeScreen,
      routes: AppRoutes.routes,
    );
  }
}


class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController group17864Controller = TextEditingController();

  TextEditingController group17865Controller = TextEditingController();
  late Future futureAlbum;

  @override
  void initState() {
    // TODO: implement initState
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
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, top: 16, right: 20, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // CustomButton(
                      //     height: 32,
                      //     width: 55,
                      //     text: "Skip",
                      //     variant: ButtonVariant.OutlineGray300,
                      //     shape: ButtonShape.CircleBorder16,
                      //     padding: ButtonPadding.PaddingAll9,
                      //     fontStyle: ButtonFontStyle.SofiaPro14,
                      //     alignment: Alignment.centerRight),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(255.00),
                              margin: getMargin(left: 10, top: 85),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Welcome to\n",
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(48),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(
                                        text: "M.E.A.T.S",
                                        style: TextStyle(
                                            color: ColorConstant.gray90001,
                                            fontSize: getFontSize(30),
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700))
                                  ]),
                                  textAlign: TextAlign.left))),
                      Container(
                          width: getHorizontalSize(316.00),
                          margin: getMargin(top: 34),
                          child: Text(
                              "The number one social media platform where you can Meet, Eat & Shop.",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular18Bluegray300a9)),
                      Spacer(),
                      Container(
                          height: getVerticalSize(19.00),
                          width: getHorizontalSize(293.00),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text(" sign in with",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtRobotoMedium16Bluegray300)),
                            CustomImageView(
                                svgPath: ImageConstant.imgGroup17868,
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
                          child: GestureDetector(
                            onTap: () async {
                              // User? user = await AuthService().signInWithGoogle();
                              // print("Amitttttt $user");
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
                          // Row(
                          //   // crossAxisAlignment: CrossAxisAlignment.center,
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       // CustomTextFormField(
                          //       //     width: 139,
                          //       //     focusNode: FocusNode(),
                          //       //     controller: group17864Controller,
                          //       //     hintText: "FACEBOOK",
                          //       //     variant:
                          //       //         TextFormFieldVariant.OutlineGray300_1,
                          //       //     shape: TextFormFieldShape.CircleBorder27,
                          //       //     padding: TextFormFieldPadding.PaddingT16,
                          //       //     fontStyle:
                          //       //         TextFormFieldFontStyle.RobotoMedium13,
                          //       //     prefix: Container(
                          //       //         margin: getMargin(
                          //       //             left: 12,
                          //       //             top: 12,
                          //       //             right: 8,
                          //       //             bottom: 12),
                          //       //         child: CustomImageView(
                          //       //             svgPath:
                          //       //                 ImageConstant.imgFacebook)),
                          //       //     prefixConstraints: BoxConstraints(
                          //       //         maxHeight: getVerticalSize(54.00))),
                          //       // CustomTextFormField(
                          //       //     width: 139,
                          //       //     focusNode: FocusNode(),
                          //       //     controller: group17865Controller,
                          //       //     hintText: "GOOGLE",
                          //       //     isClickEnabled: false,
                          //       //     variant:
                          //       //         TextFormFieldVariant.OutlineGray300_1,
                          //       //     shape: TextFormFieldShape.CircleBorder27,
                          //       //     padding: TextFormFieldPadding.PaddingT16,
                          //       //     fontStyle:
                          //       //         TextFormFieldFontStyle.RobotoMedium13,
                          //       //     textInputAction: TextInputAction.done,
                          //       //     prefix: Container(
                          //       //         margin: getMargin(
                          //       //             left: 12,
                          //       //             top: 13,
                          //       //             right: 15,
                          //       //             bottom: 12),
                          //       //         child: CustomImageView(
                          //       //             svgPath: ImageConstant.imgGoogle)),
                          //       //     prefixConstraints: BoxConstraints(
                          //       //         maxHeight: getVerticalSize(54.00)))
                          //     ])),
                      CustomButton(
                          height: 48,
                          width: 335,
                          text: "Start with Email",
                          margin: getMargin(top: 30, bottom: 63),
                          onTap: () => onTapStatwithemailOne(context)),
                      Padding(
                          padding: getPadding(top: 10, bottom: 5),
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
                                    padding: getPadding(left: 7),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, AppRoutes.signInScreen);
                                      },
                                      child: Text("Sign In",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoBold16Gray90001
                                              .copyWith(
                                              decoration:
                                              TextDecoration
                                                  .underline)),
                                    ))
                              ]))
                    ])),
            // bottomNavigationBar: Container(
            //     width: size.width,
            //     padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
            //     decoration: AppDecoration.fillWhiteA700
            //         .copyWith(borderRadius: BorderRadiusStyle.customBorderTL16),
            //     child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           CustomImageView(
            //               svgPath: ImageConstant.imgRectangle,
            //               height: getVerticalSize(5.00),
            //               width: getHorizontalSize(48.00),
            //               radius:
            //                   BorderRadius.circular(getHorizontalSize(2.00)),
            //               margin: getMargin(bottom: 3))
            //         ]))
        ));
  }

  onTapStatwithemailOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
