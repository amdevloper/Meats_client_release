import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../routes/app_routes.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/app_bar/appbar_image.dart';
import '../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import 'widgets/listcontentishere_item_widget.dart';
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
                    onTap: () => onTapArrowleft30(context)),
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
                                  style: AppStyle.txtRobotoBold24Gray900),
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
                                  onTap: () => onTapPay50Zero(context)),
                            ]))))));
  }

  onTapPay50Zero(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.moneyAddedSuccessScreen);
  }

  onTapArrowleft30(BuildContext context) {
    Navigator.pop(context);
  }
}
