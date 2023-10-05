import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../wallet_setup_screen/widgets/expandablelistvolume_item_widget.dart';

class WalletSetupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
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
                                            margin:
                                                getMargin(top: 8, right: 20),
                                            variant:
                                                ButtonVariant.OutlineGray300,
                                            shape: ButtonShape.CircleBorder16,
                                            padding: ButtonPadding.PaddingAll9,
                                            fontStyle:
                                                ButtonFontStyle.SofiaPro14,
                                            alignment: Alignment.centerRight),
                                        Container(
                                            width: getHorizontalSize(215.00),
                                            margin: getMargin(top: 24),
                                            child: Text(
                                                "Payment and Wallet \nSetup",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtRobotoBold24Gray900)),
                                        Padding(
                                            padding: getPadding(top: 27),
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: 4,
                                                itemBuilder: (context, index) {
                                                  return ExpandablelistvolumeItemWidget();
                                                })),
                                        CustomButton(
                                            height: 48,
                                            width: 335,
                                            text: "Save and Next",
                                            margin: getMargin(top: 136),
                                            onTap: () =>
                                                onTapSaveandnext(context)),
                                      ]))))
                    ]))));
  }

  onTapSaveandnext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.creditCardAddScreen);
  }
}
