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
class AfterProfileUploadScreen extends StatelessWidget {
  TextEditingController controlsTextController = TextEditingController();

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
                    onTap: () => onTapArrowleft11(context)),
                title: AppbarSubtitle(
                    text: "Crate Group", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 5, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Container(
                          height: getSize(95.00),
                          width: getSize(95.00),
                          margin: getMargin(top: 54),
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgVector95x95,
                                height: getSize(95.00),
                                width: getSize(95.00),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(47.00)),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.gray900A2,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                            color: ColorConstant.blueGray300A2,
                                            width: getHorizontalSize(3.00)),
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(47.00))),
                                    child: Container(
                                        height: getSize(95.00),
                                        width: getSize(95.00),
                                        padding: getPadding(
                                            left: 33,
                                            top: 35,
                                            right: 33,
                                            bottom: 35),
                                        decoration: AppDecoration
                                            .outlineBluegray300a2
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder47),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgCamera,
                                              height: getVerticalSize(24.00),
                                              width: getHorizontalSize(29.00),
                                              alignment: Alignment.center)
                                        ]))))
                          ])),
                      Container(
                          width: getHorizontalSize(227.00),
                          margin: getMargin(top: 19),
                          child: Text(
                              "Click here to upload or change\nProfile image",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoRegular16Gray900)),
                      CustomTextFormField(
                          width: 335,
                          focusNode: FocusNode(),
                          controller: controlsTextController,
                          hintText: "My Foodie Partner",
                          margin: getMargin(top: 37),
                          fontStyle:
                              TextFormFieldFontStyle.RobotoMedium16Gray900,
                          textInputAction: TextInputAction.done),
                      CustomButton(
                          height: 48,
                          width: 335,
                          text: "Create Group",
                          margin: getMargin(top: 30, bottom: 5),
                          onTap: () => onTapCreategroup(context))
                    ])),
        ));
  }

  onTapCreategroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.groupsScreen);
  }

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }
}
