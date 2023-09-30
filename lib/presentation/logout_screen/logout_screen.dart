import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';

class LogoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                335.00,
              ),
              padding: getPadding(
                left: 1,
                top: 22,
                right: 1,
                bottom: 22,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 11,
                    ),
                    child: Text(
                      "Logout ?",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium24Black900,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      333.00,
                    ),
                    margin: getMargin(
                      top: 15,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray300,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        248.00,
                      ),
                      margin: getMargin(
                        left: 19,
                        top: 20,
                      ),
                      child: Text(
                        "Are you sure want to logout from M.E.A.T.S app ?",
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16Gray900,
                      ),
                    ),
                  ),
                  CustomButton(
                    height: 48,
                    width: 290,
                    text: "Yes",
                    margin: getMargin(
                      top: 31,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Text(
                      "No",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold16Bluegray300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
