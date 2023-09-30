import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreditCardAddScreen extends StatelessWidget {
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
                height: getVerticalSize(48.00),
                leadingWidth: 375,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        getMargin(left: 18, top: 12, right: 333, bottom: 12),
                    onTap: () => onTapArrowleft50(context)),
                styleType: Style.bgFillWhiteA700),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 1),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: getHorizontalSize(317.00),
                                      margin: getMargin(left: 20),
                                      child: Text(
                                          "We accept credit cards from visa, MasterCard, Sodexo, Rupay, American Express, Maestro & Many More",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular14Gray900))),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextController,
                                  hintText: "Name on Card",
                                  margin: getMargin(top: 21)),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextOneController,
                                  hintText: "Card Number",
                                  margin: getMargin(top: 20),
                                  textInputType: TextInputType.number),
                              CustomTextFormField(
                                  width: 335,
                                  focusNode: FocusNode(),
                                  controller: controlsTextTwoController,
                                  hintText: "Expiry Date",
                                  margin: getMargin(top: 20),
                                  textInputAction: TextInputAction.done),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 20),
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: 24,
                                                width: 24,
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmarkWhiteA700)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 9, top: 4, bottom: 5),
                                                child: Text(
                                                    "Save as Default Card",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular12Gray900))
                                          ]))),
                              CustomButton(
                                  width: 300,
                                  height:
                                  getVerticalSize(48),
                                  text: "Add Card",
                                  margin: getMargin(
                                      left: 20,
                                      top: 26,
                                      right: 20),
                                  variant: ButtonVariant
                                      .OutlineGray9004f,
                                  shape: ButtonShape
                                      .CircleBorder24,
                                  padding: ButtonPadding.PaddingAll5,
                                  fontStyle: ButtonFontStyle
                                      .RobotoBold16,
                                  onTap: () async {
                                    // Obtain shared preferences.
                                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                                    await prefs.setStringList('PaymentItem', <String>[controlsTextController.text.toString(),controlsTextOneController.text.toString(), controlsTextTwoController.text.toString()]);
                                    Navigator.of(context).pop();
                                  }
                                // onTapAddcard(
                                // context)
                              ),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 312),
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

  onTapAddcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.walletSetupScreen);
  }

  onTapArrowleft50(BuildContext context) {
    Navigator.pop(context);
  }
}
