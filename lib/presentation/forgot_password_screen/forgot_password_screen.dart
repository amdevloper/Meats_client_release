import 'package:flutter/material.dart';
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
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
import 'package:http/http.dart' as http;


// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  TextEditingController controlsTextController = TextEditingController();

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
                    onTap: () => onTapArrowleft5(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "Forgot Password"),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding: getPadding(left: 20, top: 1, right: 20, bottom: 1),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              width: getHorizontalSize(260.00),
                              child: Text(
                                  "Please enter your email address to reset password.",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular14Gray900)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "Email Address",
                              margin: getMargin(top: 21),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Send",
                              margin: getMargin(top: 30),
                              onTap: () => onTapSend(context)),
                          Spacer(),
                          Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapRowconfirmation(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(bottom: 18),
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
                                                padding: getPadding(
                                                    left: 4, top: 1, bottom: 1),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.pushNamed(context, AppRoutes.signInScreen);
                                                  },
                                                  child: Text("Sign In",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtSofiaProSemiBold16
                                                          .copyWith(
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline)),
                                                ))
                                          ]))))
                        ]))),
        ));
  }

  Future<dynamic> contactUsFunction(BuildContext context) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');

    // var studentsmap = itemList.map((e){
    //   return {
    //     "category": e.name,
    //     "name": e.name,
    //     "about": e.about,
    //     "originalPrice": e.originalPrice,
    //     "discountPrice": e.discountPrice,
    //     "image": e.image,
    //   };
    // }).toList();


    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/auth/reset'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': token!,
      },

      body: jsonEncode(<dynamic,dynamic>{
        "email" : controlsTextController.value.text,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.pop(context);
    } else {
      throw Exception('Failed to create restaurant.');
    }
  }


  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordResetScreen);
  }

  onTapRowconfirmation(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
