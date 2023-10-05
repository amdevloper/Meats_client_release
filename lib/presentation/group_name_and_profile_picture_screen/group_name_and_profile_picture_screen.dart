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
class GroupNameAndProfilePictureScreen extends StatelessWidget {
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
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft10(context)),
                title: AppbarSubtitle(
                    text: "Crate Group", margin: getMargin(left: 14))),
            body: Form(
                key: _formKey,
                child: Container(
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
                          CustomImageView(
                              svgPath: ImageConstant.imgGroup33951,
                              height: getSize(115.00),
                              width: getSize(115.00),
                              margin: getMargin(top: 45)),
                          Container(
                              width: getHorizontalSize(148.00),
                              margin: getMargin(top: 10),
                              child: Text("Click here to upload\nProfile image",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtRobotoRegular16Gray900)),
                          CustomTextFormField(
                              width: 335,
                              focusNode: FocusNode(),
                              controller: controlsTextController,
                              hintText: "Enter Group Name",
                              margin: getMargin(top: 37),
                              textInputAction: TextInputAction.done),
                          CustomButton(
                              height: 48,
                              width: 335,
                              text: "Create Group",
                              margin: getMargin(top: 30, bottom: 5),
                              onTap: () => onTapCreategroup(context))
                        ]))),
        ));
  }

  onTapCreategroup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.afterProfileUploadScreen);
  }

  onTapArrowleft10(BuildContext context) {
    Navigator.pop(context);
  }
}
