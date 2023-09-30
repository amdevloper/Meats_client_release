import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../followers_screen/widgets/listellipseseven4_item_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FollowersScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
                    onTap: () => onTapArrowleft57(context)),
                title: AppbarSubtitle(
                    text: "Followers", margin: getMargin(left: 11))),
            body: Container(
                height: getVerticalSize(648.00),
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          width: size.width,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ListView.separated(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Container(
                                          height: getVerticalSize(1.00),
                                          width: size.width,
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray300));
                                    },
                                    itemCount: 8,
                                    itemBuilder: (context, index) {
                                      return Listellipseseven4ItemWidget();
                                    }),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300))
                              ])))
                ])),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {})
        ));
  }

  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homeGroceryPage:
  //       return HomeGroceryPage();
  //     case AppRoutes.insightsPage:
  //       return InsightsPage();
  //     case AppRoutes.socialPostMenuTabContainerPage:
  //       return SocialPostMenuTabContainerPage();
  //     case AppRoutes.cartPage:
  //       return CartPage();
  //     case AppRoutes.myProfilePage:
  //       return MyProfilePage();
  //     default:
  //       return HomeGroceryPage();
  //   }
  // }

  onTapArrowleft57(BuildContext context) {
    Navigator.pop(context);
  }
}
