import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../add_money_to_wallet_screen/widgets/listcontentishere_item_widget.dart';
import 'package:flutter/material.dart';

class AddMoneyToWalletScreen extends StatelessWidget {
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
                    onTap: () => onTapArrowleft52(context)),
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 19),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Add Money to Wallet",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoBold24),
                              Padding(
                                  padding: getPadding(top: 17),
                                  child: Text("\$50.00",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoBold20)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 28),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding:
                                      getPadding(left: 20, top: 19, right: 20),
                                  child: ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300));
                                      },
                                      itemCount: 2,
                                      itemBuilder: (context, index) {
                                        return ListcontentishereItemWidget();
                                      })),
                              CustomButton(
                                  height: 48,
                                  width: 335,
                                  text: "Pay 50.00",
                                  margin: getMargin(top: 363),
                                  padding: ButtonPadding.PaddingAll16,
                                  onTap: () => onTapPay50Zero(context)),
                              Container(
                                  width: size.width,
                                  margin: getMargin(top: 26),
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

  onTapPay50Zero(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.moneyAddedSuccessScreen);
  }

  onTapArrowleft52(BuildContext context) {
    Navigator.pop(context);
  }
}
