import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Group34127Screen extends StatelessWidget {
  TextEditingController controlsTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  width: getHorizontalSize(334.00),
                  padding: getPadding(top: 22, bottom: 22),
                  decoration: AppDecoration.fillWhiteA700
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: getPadding(top: 10),
                            child: Text("Rename Group",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoMedium24Black900)),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(333.00),
                            margin: getMargin(top: 15),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray300)),
                        CustomTextFormField(
                            width: 295,
                            focusNode: FocusNode(),
                            controller: controlsTextController,
                            hintText: "My Foodie Partner",
                            margin: getMargin(top: 19),
                            padding: TextFormFieldPadding.PaddingAll17,
                            fontStyle:
                                TextFormFieldFontStyle.RobotoMedium16Gray900,
                            textInputAction: TextInputAction.done),
                        CustomButton(
                            height: 48,
                            width: 290,
                            text: "Update",
                            margin: getMargin(top: 28),
                            onTap: () => onTapUpdate(context)),
                        Padding(
                            padding: getPadding(top: 18),
                            child: Text("Cancel",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoBold16Bluegray300))
                      ]))
            ])));
  }

  onTapUpdate(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.groupChatScreen);
  }
}
