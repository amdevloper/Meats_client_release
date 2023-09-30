import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/app_bar/appbar_image.dart';
import '../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';

class FreedrinkzWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(48.00),
                leadingWidth: 375,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        getMargin(left: 18, top: 12, right: 333, bottom: 12),
                    onTap: () => onTapArrowleft28(context)),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 16),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("M.E.A.T.S Wallet",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold24Gray900),
                              Padding(
                                  padding: getPadding(top: 19),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Available Balance ",
                                            style: TextStyle(
                                                color: ColorConstant.gray900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)),
                                        TextSpan(
                                            text: "\$10.00",
                                            style: TextStyle(
                                                color: ColorConstant.indigo900,
                                                fontSize: getFontSize(14),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w700))
                                      ]),
                                      textAlign: TextAlign.left)),
                              Container(
                                  width: getHorizontalSize(335.00),
                                  margin:
                                      getMargin(left: 20, top: 40, right: 20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(8.00))),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Add Money",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium16Bluegray300),
                                        Container(
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 9),
                                            padding: getPadding(
                                                left: 16,
                                                top: 13,
                                                right: 16,
                                                bottom: 13),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: Text("\$50.00",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoMedium16Gray900))
                                                ]))
                                      ])),
                              CustomButton(
                                  height: 48,
                                  width: 335,
                                  text: "Add 50.00",
                                  margin: getMargin(top: 30),
                                  onTap: () => onTapAdd50Zero(context)),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 422),
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

  onTapAdd50Zero(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.addMoneyToWalletScreen);
  }

  onTapArrowleft28(BuildContext context) {
    Navigator.pop(context);
  }
}
