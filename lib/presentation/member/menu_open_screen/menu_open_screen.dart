import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_search_view.dart';
import '../../../widgets/custom_switch.dart';
import '../browse_menu_dialog/browse_menu_dialog.dart';
import '../menu_open_screen/widgets/expandablelistspecialtyvegfourteen_item_widget.dart';
import '../menu_open_screen/widgets/listrectangle4322_item_widget.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MenuOpenScreen extends StatelessWidget {
  TextEditingController barsSearchBarsController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(46.00),
                centerTitle: true,
                title: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                              padding: getPadding(left: 18, top: 8, right: 20),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    svgPath: ImageConstant.imgArrowleft,
                                    onTap: () => onTapArrowleft70(context)),
                                AppbarImage(
                                    height: getVerticalSize(20.00),
                                    width: getHorizontalSize(16.00),
                                    svgPath: ImageConstant.imgUpload,
                                    margin:
                                        getMargin(left: 297, top: 2, bottom: 2))
                              ])),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 14),
                              decoration:
                                  BoxDecoration(color: ColorConstant.gray300))
                        ])),
                styleType: Style.bgFillWhiteA700_1),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(1955.00),
                        width: size.width,
                        margin: getMargin(top: 20),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: size.width,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(231.00),
                                            width: size.width,
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  125.00),
                                                          margin: getMargin(
                                                              bottom: 5),
                                                          padding: getPadding(
                                                              left: 30,
                                                              top: 5,
                                                              right: 47,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .txtFillGray100,
                                                          child: Text("Post",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14Bluegray300))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  125.00),
                                                          margin: getMargin(
                                                              bottom: 5),
                                                          padding: getPadding(
                                                              left: 30,
                                                              top: 5,
                                                              right: 44,
                                                              bottom: 5),
                                                          decoration: AppDecoration
                                                              .txtFillGray100,
                                                          child: Text("Menu",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium14))),
                                                  CustomButton(
                                                      height: 32,
                                                      width: 79,
                                                      text: "Follow",
                                                      margin:
                                                          getMargin(right: 20),
                                                      alignment:
                                                          Alignment.topRight),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                          width: size.width,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            20),
                                                                    child: Row(
                                                                        children: [
                                                                          Text(
                                                                              "La Pino’s Pizza",
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoBold24),
                                                                          Container(
                                                                              width: getHorizontalSize(35.00),
                                                                              margin: getMargin(left: 6, top: 9, bottom: 5),
                                                                              padding: getPadding(left: 8, top: 1, right: 8, bottom: 1),
                                                                              decoration: AppDecoration.txtFillTealA400.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder4),
                                                                              child: Text("Open", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium8))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 9),
                                                                    child: Text(
                                                                        "Pizza, Italian",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular16)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 7),
                                                                    child: Row(
                                                                        children: [
                                                                          CustomButton(
                                                                              height: 19,
                                                                              width: 46,
                                                                              text: "4.5",
                                                                              variant: ButtonVariant.OutlineGray300,
                                                                              shape: ButtonShape.RoundedBorder9,
                                                                              padding: ButtonPadding.PaddingT1,
                                                                              fontStyle: ButtonFontStyle.RobotoRegular12Gray900,
                                                                              suffixWidget: Container(margin: getMargin(left: 4), child: CustomImageView(svgPath: ImageConstant.imgStar))),
                                                                          Padding(
                                                                              padding: getPadding(left: 11, bottom: 1),
                                                                              child: Text("Read More", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14))
                                                                        ])),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 20, top: 14, right: 20),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                          Padding(
                                                                              padding: getPadding(top: 2, bottom: 1),
                                                                              child: Text("Lakewood, CA, USA", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular14Bluegray300)),
                                                                          Spacer(),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgLightbulb,
                                                                              height: getSize(21.00),
                                                                              width: getSize(21.00)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgBookmark,
                                                                              height: getVerticalSize(20.00),
                                                                              width: getHorizontalSize(16.00),
                                                                              margin: getMargin(left: 15))
                                                                        ]))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            20,
                                                                        top: 4),
                                                                    child: Text(
                                                                        "10 km Away",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRobotoRegular14)),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: size
                                                                        .width,
                                                                    margin: getMargin(
                                                                        top:
                                                                            12),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray300)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(left: 20, top: 10, right: 24),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                          Padding(
                                                                              padding: getPadding(bottom: 1),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "02", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
                                                                                    TextSpan(text: " ", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500)),
                                                                                    TextSpan(text: "Posts", style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500))
                                                                                  ]),
                                                                                  textAlign: TextAlign.left)),
                                                                          Padding(
                                                                              padding: getPadding(bottom: 1),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "24", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
                                                                                    TextSpan(text: " ", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500)),
                                                                                    TextSpan(text: "Followers", style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500))
                                                                                  ]),
                                                                                  textAlign: TextAlign.left)),
                                                                          Padding(
                                                                              padding: getPadding(top: 1),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "20", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w700)),
                                                                                    TextSpan(text: " Following", style: TextStyle(color: ColorConstant.blueGray300, fontSize: getFontSize(14), fontFamily: 'Roboto', fontWeight: FontWeight.w500))
                                                                                  ]),
                                                                                  textAlign: TextAlign.left))
                                                                        ]))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: size
                                                                        .width,
                                                                    margin: getMargin(
                                                                        top:
                                                                            10),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                            color:
                                                                                ColorConstant.gray300)),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Container(
                                                                        width: getHorizontalSize(
                                                                            125.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                3),
                                                                        padding: getPadding(
                                                                            left:
                                                                                30,
                                                                            top:
                                                                                5,
                                                                            right:
                                                                                39,
                                                                            bottom:
                                                                                5),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .txtFillGray100,
                                                                        child: Text(
                                                                            "Review",
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRobotoRegular14Bluegray300))),
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00),
                                                                    width: size
                                                                        .width,
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                4),
                                                                    child: Stack(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        children: [
                                                                          Align(
                                                                              alignment: Alignment.center,
                                                                              child: Container(height: getVerticalSize(1.00), width: size.width, decoration: BoxDecoration(color: ColorConstant.gray300, borderRadius: BorderRadius.circular(getHorizontalSize(1.00))))),
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Container(height: getVerticalSize(1.00), width: getHorizontalSize(125.00), decoration: BoxDecoration(color: ColorConstant.gray90001, borderRadius: BorderRadius.circular(getHorizontalSize(1.00)))))
                                                                        ]))
                                                              ])))
                                                ])),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: getVerticalSize(89.00),
                                                width:
                                                    getHorizontalSize(355.00),
                                                margin: getMargin(top: 20),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                CustomSearchView(
                                                                    width: 335,
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    controller:
                                                                        barsSearchBarsController,
                                                                    hintText:
                                                                        "Search with Menu",
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    prefix: Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                8,
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                12,
                                                                            bottom:
                                                                                10),
                                                                        child: CustomImageView(
                                                                            svgPath: ImageConstant
                                                                                .imgSearch)),
                                                                    prefixConstraints:
                                                                        BoxConstraints(
                                                                            maxHeight:
                                                                                getVerticalSize(36.00)),
                                                                    suffix: Padding(
                                                                        padding: EdgeInsets.only(right: getHorizontalSize(15.00)),
                                                                        child: IconButton(
                                                                            onPressed: () {
                                                                              barsSearchBarsController.clear;
                                                                            },
                                                                            icon: Icon(Icons.clear, color: Colors.grey.shade600))),
                                                                    suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(36.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 20,
                                                                        right:
                                                                            64),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          CustomButton(
                                                                              height: 32,
                                                                              width: 95,
                                                                              text: "Breakfast",
                                                                              variant: ButtonVariant.OutlineGray300_1,
                                                                              shape: ButtonShape.CustomBorderLR20,
                                                                              padding: ButtonPadding.PaddingT8,
                                                                              fontStyle: ButtonFontStyle.RobotoRegular12,
                                                                              suffixWidget: Container(margin: getMargin(left: 10), child: CustomImageView(svgPath: ImageConstant.imgVectorBlueGray300))),
                                                                          Padding(
                                                                              padding: getPadding(top: 9, bottom: 7),
                                                                              child: Text("Ver Only", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular12Black900))
                                                                        ]))
                                                              ])),
                                                      CustomSwitch(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          value: true,
                                                          onChanged: (value) {})
                                                    ]))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 20, top: 21),
                                                child: Text("Pizzas (33)",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoBold16Gray900))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 14, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Classic Veg (5)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 6, bottom: 6))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 18),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 18, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Simple Veg (4)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 6, bottom: 6))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 18),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 18, right: 20),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Exotic Veg (10)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Gray60001),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowdownBlueGray300,
                                                      height:
                                                          getVerticalSize(6.00),
                                                      width: getHorizontalSize(
                                                          12.00),
                                                      margin: getMargin(
                                                          top: 6, bottom: 6))
                                                ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 20, top: 17, right: 20),
                                            child: ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          275.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300,
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      1.00))));
                                                },
                                                itemCount: 6,
                                                itemBuilder: (context, index) {
                                                  return Listrectangle4322ItemWidget();
                                                })),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: getHorizontalSize(335.00),
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            1.00)))),
                                        Padding(
                                            padding: getPadding(top: 20),
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: 8,
                                                itemBuilder: (context, index) {
                                                  return ExpandablelistspecialtyvegfourteenItemWidget();
                                                }))
                                      ]))),
                          CustomButton(
                              height: 32,
                              width: 130,
                              text: "Browse Menu",
                              margin: getMargin(top: 559),
                              variant: ButtonVariant.FillGray90001,
                              onTap: () => onTapBrowsemenu(context),
                              alignment: Alignment.topCenter)
                        ])))),
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

  onTapBrowsemenu(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: BrowseMenuDialog(),
              backgroundColor: Colors.transparent,
            ));
  }

  onTapArrowleft70(BuildContext context) {
    Navigator.pop(context);
  }
}
