import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
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
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft27(context)),
                title: AppbarSubtitle1(
                    text: "Change Password", margin: getMargin(left: 14))),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding: getPadding(top: 6, bottom: 6),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "Old Password",
                              margin: getMargin(top: 19),
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: getHorizontalSize(309.00),
                                  margin: getMargin(left: 20, top: 20),
                                  child: Text(
                                      "Password should contain at least 1 upper case letter, 1 lower case letter, 1 special character & 1 Numeric Value.",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoRegular12))),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextOneController,
                              hintText: "New Password",
                              margin: getMargin(top: 18),
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextTwoController,
                              hintText: "Confirm Password",
                              margin: getMargin(top: 20),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Update Password",
                              margin: getMargin(top: 30, bottom: 5))
                        ]))),
            bottomNavigationBar: Container(
                width: size.width,
                padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
                decoration: AppDecoration.fillWhiteA700,
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

  onTapArrowleft27(BuildContext context) {
    Navigator.pop(context);
  }
}
