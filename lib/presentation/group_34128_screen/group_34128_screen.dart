import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';

class Group34128Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            body:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: getHorizontalSize(334.00),
              margin: getMargin(bottom: 4),
              padding: getPadding(top: 21, bottom: 21),
              decoration: AppDecoration.fillWhiteA700
                  .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: getPadding(top: 11),
                        child: Text("Delete Group",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium24Black900)),
                    Container(
                        height: getVerticalSize(1.00),
                        width: getHorizontalSize(333.00),
                        margin: getMargin(top: 16),
                        decoration:
                            BoxDecoration(color: ColorConstant.gray300)),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: getHorizontalSize(267.00),
                            margin: getMargin(left: 19, top: 20),
                            child: Text(
                                "Are you sure you want to delete this group ?",
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular16Gray900))),
                    CustomButton(
                        height: 48,
                        width: 290,
                        text: "Yes, Delete It",
                        margin: getMargin(top: 30),
                        padding: ButtonPadding.PaddingAll16,
                        onTap: () => onTapYesdeleteit(context)),
                    Padding(
                        padding: getPadding(top: 19),
                        child: Text("No, Thanks",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoBold16Bluegray300))
                  ]))
        ])));
  }

  onTapYesdeleteit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.groupsScreen);
  }
}
