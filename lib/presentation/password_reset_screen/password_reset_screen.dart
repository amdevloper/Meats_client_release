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
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PasswordResetScreen extends StatelessWidget {
  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();

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
                    onTap: () => onTapArrowleft6(context)),
                centerTitle: true,
                title: AppbarSubtitle(text: "Reset Password"),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    padding:
                        getPadding(left: 20, top: 21, right: 20, bottom: 21),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Please enter new password ",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14Gray900),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "Password",
                              margin: getMargin(top: 21),
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextOneController,
                              hintText: "Confirm Password",
                              margin: getMargin(top: 20),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              isObscureText: true),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Reset",
                              margin: getMargin(top: 30, bottom: 5),
                              onTap: () => onTapReset(context))
                        ]))),
        ));
  }

  onTapReset(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.passwordResetSuccessScreen);
  }

  onTapArrowleft6(BuildContext context) {
    Navigator.pop(context);
  }
}
