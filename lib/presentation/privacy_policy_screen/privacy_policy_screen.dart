import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft47(context)),
                title: AppbarSubtitle1(
                    text: "Privacy Policy", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      Padding(
                          padding: getPadding(left: 20, top: 20),
                          child: Text("Your Rights",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium16Gray900)),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(333.00),
                              margin: getMargin(top: 10, bottom: 5),
                              child: Text(
                                  "Opt-out. You may contact us anytime to opt-out of: (i) direct marketing communications; (ii) automated decision-making and/or profiling; (iii) our collection of sensitive personal data; (iv) any new processing of your personal data that we may carry out beyond the original purpose; or (v) the transfer of your personal data outside the EEA. Please note that your use of some of the App may be ineffective upon opt-out.\r\n\r\nAccess. You may access the information we hold about you at any time via your profile/account or by contacting us directly.\r\n\r\nAmend. You can also contact us to update or correct any inaccuracies in your personal data.\r\n\r\nMove. Your personal data is portable – i.e. you to have the flexibility to move your data to other service providers as you wish.\r\n\r\nErase and forget. In certain situations, for example when the information we hold about you is no longer relevant or is incorrect, you can request that we erase your data.",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular14Gray900)))
                    ])),
        ));
  }

  onTapArrowleft47(BuildContext context) {
    Navigator.pop(context);
  }
}
