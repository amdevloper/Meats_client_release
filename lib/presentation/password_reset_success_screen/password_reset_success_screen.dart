import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                padding: getPadding(left: 20, top: 14, right: 20, bottom: 14),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgMeat1,
                          height: getSize(170.00),
                          width: getSize(170.00)),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 55),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: ColorConstant.teal300,
                                  width: getHorizontalSize(3.00)),
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(42.00))),
                          child: Container(
                              height: getSize(84.00),
                              width: getSize(84.00),
                              padding: getPadding(
                                  left: 24, top: 28, right: 24, bottom: 28),
                              decoration: AppDecoration.outlineTeal300.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder42),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark,
                                    height: getVerticalSize(24.00),
                                    width: getHorizontalSize(35.00),
                                    alignment: Alignment.topCenter)
                              ]))),
                      Container(
                          width: getHorizontalSize(174.00),
                          margin: getMargin(top: 40),
                          child: Text("Password Reset Successfully!",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoMedium24)),
                      Container(
                          width: getHorizontalSize(290.00),
                          margin: getMargin(top: 13),
                          child: Text(
                              "You can now use new password to log in to your account!",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoRegular16)),
                      CustomButton(
                          height: 48,
                          width: 335,
                          text: "Login",
                          margin: getMargin(top: 33, bottom: 5),
                          onTap: () => onTapLogin(context))
                    ])),
        ));
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
