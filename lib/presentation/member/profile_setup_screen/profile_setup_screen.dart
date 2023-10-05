import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
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
class ProfileSetupScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController controlsTextController = TextEditingController();

  TextEditingController controlsTextOneController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController groupThirteenController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Container(
                                      width: size.width,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomButton(
                                                height: 32,
                                                width: 55,
                                                text: "Skip",
                                                margin: getMargin(
                                                    top: 8, right: 20),
                                                variant: ButtonVariant
                                                    .OutlineGray300,
                                                fontStyle:
                                                    ButtonFontStyle.SofiaPro14,
                                                onTap: () => onTapSkip(context),
                                                alignment:
                                                    Alignment.centerRight),
                                            Container(
                                                height: getVerticalSize(536.00),
                                                width:
                                                    getHorizontalSize(335.00),
                                                margin: getMargin(top: 27),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomTextFormField(
                                                          width: 335,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller:
                                                              emailController,
                                                          hintText:
                                                              "alex.martin024@gmail.com",
                                                          margin: getMargin(
                                                              bottom: 140),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .OutlineIndigo900,
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .RobotoMedium16,
                                                          textInputType:
                                                              TextInputType
                                                                  .emailAddress,
                                                          alignment: Alignment
                                                              .bottomCenter),
                                                      CustomTextFormField(
                                                          width: 335,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller:
                                                              controlsTextController,
                                                          hintText: "Martin",
                                                          margin: getMargin(
                                                              bottom: 203),
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .RobotoMedium16,
                                                          alignment: Alignment
                                                              .bottomCenter),
                                                      CustomTextFormField(
                                                          width: 335,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller:
                                                              controlsTextOneController,
                                                          hintText: "Alex",
                                                          margin: getMargin(
                                                              top: 213),
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .RobotoMedium16,
                                                          alignment: Alignment
                                                              .topCenter),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  top: 416,
                                                                  bottom: 70),
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 14,
                                                                      right: 16,
                                                                      bottom:
                                                                          14),
                                                              decoration: AppDecoration
                                                                  .outlineGray3001
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder16),
                                                              child: Row(
                                                                  children: [
                                                                    Container(
                                                                        margin: getMargin(
                                                                            top:
                                                                                2,
                                                                            bottom:
                                                                                2),
                                                                        decoration: AppDecoration.fillWhiteA700.copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .roundedBorder16),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(height: getVerticalSize(8.00), width: getHorizontalSize(20.00), margin: getMargin(bottom: 8), decoration: BoxDecoration(color: ColorConstant.redA200, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(2.00)), topRight: Radius.circular(getHorizontalSize(2.00)))))
                                                                            ])),
                                                                    CustomDropDown(
                                                                        width:
                                                                            39,
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        icon: Container(
                                                                            margin: getMargin(
                                                                                left:
                                                                                    7),
                                                                            child: CustomImageView(
                                                                                svgPath: ImageConstant
                                                                                    .imgArrowdownBlack900)),
                                                                        hintText:
                                                                            "+1",
                                                                        margin: getMargin(
                                                                            left:
                                                                                4,
                                                                            bottom:
                                                                                1),
                                                                        variant:
                                                                            DropDownVariant
                                                                                .None,
                                                                        items:
                                                                            dropdownItemList,
                                                                        onChanged:
                                                                            (value) {}),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                16,
                                                                            right:
                                                                                116,
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "Mobile number",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular16))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                    "Setup Your Profile",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtInterBold24),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Padding(
                                                                        padding: getPadding(top: 28, right: 70),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                                                                          CustomImageView(
                                                                              imagePath: ImageConstant.imgEllipse7,
                                                                              height: getSize(125.00),
                                                                              width: getSize(125.00),
                                                                              radius: BorderRadius.circular(getHorizontalSize(62.00))),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgCamera,
                                                                              height: getSize(32.00),
                                                                              width: getSize(32.00),
                                                                              margin: getMargin(left: 3, top: 93))
                                                                        ]))),
                                                                CustomTextFormField(
                                                                    width: 335,
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    controller:
                                                                        groupThirteenController,
                                                                    hintText:
                                                                        "Your Location",
                                                                    margin: getMargin(
                                                                        top:
                                                                            303),
                                                                    padding:
                                                                        TextFormFieldPadding
                                                                            .PaddingT12,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .done,
                                                                    suffix: Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                30,
                                                                            top:
                                                                                14,
                                                                            right:
                                                                                15,
                                                                            bottom:
                                                                                12),
                                                                        child: CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgLocationGray900)),
                                                                    suffixConstraints:
                                                                        BoxConstraints(
                                                                            maxHeight:
                                                                                getVerticalSize(50.00)))
                                                              ]))
                                                    ])),
                                            CustomButton(
                                                height: 48,
                                                width: 335,
                                                text: "Save and Next",
                                                margin: getMargin(top: 44),
                                                shape:
                                                    ButtonShape.CircleBorder24,
                                                padding:
                                                    ButtonPadding.PaddingAll13,
                                                fontStyle: ButtonFontStyle
                                                    .RobotoBold16,
                                                onTap: () =>
                                                    onTapSaveandnext(context)),
                                          ]))))
                        ])))));
  }

  onTapSkip(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.saveYourDeliveryAddressesScreen);
  }

  onTapSaveandnext(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.saveYourDeliveryAddressesScreen);
  }
}
