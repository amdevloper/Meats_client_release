import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PopupScreen extends StatelessWidget {
  TextEditingController groupThreeController = TextEditingController();

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
                            child: Text("Add Category",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoMedium24Black900)),
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(333.00),
                            margin: getMargin(top: 15),
                            decoration:
                                BoxDecoration(color: ColorConstant.gray300)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: getHorizontalSize(196.00),
                                margin: getMargin(left: 20, top: 30),
                                child: Text(
                                    "Add new category for your establishment",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtRobotoRegular16Gray900))),
                        CustomTextFormField(
                            width: 295,
                            focusNode: FocusNode(),
                            controller: groupThreeController,
                            hintText: "Enter category",
                            margin: getMargin(top: 19),
                            padding: TextFormFieldPadding.PaddingT17,
                            fontStyle: TextFormFieldFontStyle.RobotoRegular12,
                            textInputAction: TextInputAction.done),
                        CustomButton(
                            height: 48,
                            width: 290,
                            text: "Add New",
                            margin: getMargin(top: 28),
                            onTap: () => onTapAddnew(context)),
                        Padding(
                            padding: getPadding(top: 18),
                            child: Text("Cancel",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoBold16Bluegray300))
                      ]))
            ])));
  }

  onTapAddnew(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.establishmentDetailsScreen);
  }
}
