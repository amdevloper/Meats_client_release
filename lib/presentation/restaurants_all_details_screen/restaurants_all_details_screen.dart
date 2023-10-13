import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../account_page/account_page.dart';
import '../menu1_page/menu1_page.dart';
import '../my_orders_tab_container_page/my_orders_tab_container_page.dart';
import '../new_notifications_page/new_notifications_page.dart';
import '../restaurants_all_details_screen/widgets/grid1_item_widget.dart';
import 'package:flutter/material.dart';

import '../restaurants_edit_screen/restaurants_edit_screen.dart';
import '../social_home_page/social_home_page.dart';

class RestaurantsAllDetailsScreen extends StatefulWidget {
  const RestaurantsAllDetailsScreen({super.key,this.arguments});
  final dynamic arguments;

  @override
  State<RestaurantsAllDetailsScreen> createState() => _RestaurantsAllDetailsScreenState();
}

class _RestaurantsAllDetailsScreenState extends State<RestaurantsAllDetailsScreen> {
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
                centerTitle: true,
                title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 17,top: 0, right: 20),
                          child: Row(children: [
                            AppbarImage(
                                height: getSize(24.00),
                                width: getSize(24.00),
                                svgPath: ImageConstant.imgArrowleft,
                                onTap: () => onTapArrowleft59(context)),
                            // AppbarImage(
                            //     height: getVerticalSize(20.00),
                            //     width: getHorizontalSize(16.00),
                            //     svgPath: ImageConstant.imgUpload,
                            //     margin: getMargin(left: 297, top: 2, bottom: 2))
                          ])),
                      // Container(
                      //     height: getVerticalSize(1.00),
                      //     width: getHorizontalSize(374.00),
                      //     margin: getMargin(top: 14, right: 1),
                      //     decoration:
                      //         BoxDecoration(color: ColorConstant.gray300))
                    ]),
                styleType: Style.bgFillWhiteA700_2),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(top: 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(160.00),
                                  width: getHorizontalSize(374.00),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: GestureDetector(
                                                onTap: () async {
                                                  // onTapControlsSteppers(
                                                  //     context);

                                                  final result = await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => RestaurantsEditScreen(arguments: [ widget.arguments[0],widget.arguments[1]]),
                                                      ));
                                                },
                                                child: Container(
                                                  height:
                                                        getVerticalSize(32.00),
                                                    width: getHorizontalSize(
                                                        83.00),
                                                    margin:
                                                        getMargin(right: 20),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray300,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    16.00)),
                                                        border: Border.all(
                                                            color: ColorConstant
                                                                .gray300,
                                                            width:
                                                                getHorizontalSize(
                                                                    1.00))),
                                                  child:  Padding(
                                                    padding: const EdgeInsets.all(7.0),
                                                    child: Text("Edit",
                                                            overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                            TextAlign
                                                                .center,
                                                            style: AppStyle
                                                                .txtRobotoMedium16Gray900),
                                                  )))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 19, right: 47),
                                                      child: Row(children: [
                                                        Text(widget.arguments[0]['name'],
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoBold24Gray900),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    35.00),
                                                            height: 20,
                                                            padding: EdgeInsets.all(4),
                                                            margin: getMargin(left: 7),
                                                            decoration: AppDecoration
                                                                .txtFillTealA400
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .txtRoundedBorder4),
                                                            child: Text(widget.arguments[0]['status'],
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium12WhiteA700)),
                                                        // Spacer(),
                                                      ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 19, top: 9),
                                                      child: Text(
                                                        "Hie",
                                                          // widget.arguments['cuisine'],                                                          overflow: TextOverflow
                                                          //     .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular16Gray900)),
                        if(widget.arguments[0]["rating"] != null) ...[
                Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10),
                          child: Positioned(
                            right: 5,
                            bottom: 5,
                            child: Container(
                              margin: getMargin(bottom: 5,right: 5),
                              width: 45,
                              height: 23,
                              decoration: AppDecoration
                                  .outlineIndigo900
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder47),
                              child: Row(
                                children: [
                                  const SizedBox(width: 5),
                                   Text(widget.arguments[0]["rating"]),
                                  const SizedBox(width: 5),
                                  CustomImageView(svgPath:ImageConstant.imgStar),
                                ],
                              ),
                            ),
                          ),
                        ),
                                                  ],
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 19, top: 7),
                                                      child: Text(
                                                          widget.arguments[0]["location"],
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular14)),
                                                  Container(
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          374.00),
                                                      margin:
                                                          getMargin(top: 11),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray300))
                                                ]))
                                      ])),
                              Padding(
                                padding: const EdgeInsets.only(left: 19, right: 11,top: 5, bottom: 5),
                                child: Text(widget.arguments[0]['description'],
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: AppStyle.txtRobotoRegular14Gray900,
                      maxLines: 20,),
                              ),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(top: 18),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding: getPadding(left: 19, top: 23),
                                  child: Text("View Gallery",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoMedium14)),

                          if(widget.arguments[0]['image'].isNotEmpty) ...[
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 19, top: 15, right: 20),
                                      child: GridView.builder(
                                          shrinkWrap: true,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisExtent:
                                                      getVerticalSize(110.00),
                                                  crossAxisCount: 3,
                                                  mainAxisSpacing:
                                                      getHorizontalSize(4.00),
                                                  crossAxisSpacing:
                                                      getHorizontalSize(4.00)),
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          itemCount: widget.arguments[0]['image'].length ?? 0,
                                          itemBuilder: (context, index) {
                                            return Grid1ItemWidget(
                                              listOfImage: widget.arguments[0]['image'][index],
                                                onTapImgImagePlaceholder: () =>
                                                showMessageView(context));
                                          })))],
                            ])))),
            // bottomNavigationBar:
            //     CustomBottomBar(onChanged: (BottomBarEnum type) {
            //   Navigator.pushNamed(
            //       navigatorKey.currentContext!, getCurrentRoute(type));
            // })
        ));
  }

  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.newNotificationsPage;
  //     case BottomBarEnum.Myorders:
  //       return AppRoutes.myOrdersTabContainerPage;
  //     case BottomBarEnum.Social:
  //       return AppRoutes.socialHomePage;
  //     case BottomBarEnum.Menu:
  //       return AppRoutes.menu1Page;
  //     case BottomBarEnum.Account:
  //       return AppRoutes.accountPage;
  //     default:
  //       return "/";
  //   }
  // }
  //
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.newNotificationsPage:
  //       return NewNotificationsPage();
  //     case AppRoutes.myOrdersTabContainerPage:
  //       return MyOrdersTabContainerPage();
  //     case AppRoutes.socialHomePage:
  //       return SocialHomePage();
  //     case AppRoutes.menu1Page:
  //       return Menu1Page();
  //     case AppRoutes.accountPage:
  //       return AccountPage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  onTapImgImagePlaceholder(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.galleryFullViewScreen);
    showMessageView(context);
  }

  Future showMessageView(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext builderContext) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              title: Text("Add Ingredients",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRobotoMedium24Black900),
              content: Container(
                  width: getHorizontalSize(size.width/1.1),
                  padding: getPadding(top: 0, bottom: 0),
                  decoration: AppDecoration.fillWhiteA700
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: getVerticalSize(1.00),
                            width: getHorizontalSize(
                                MediaQuery.of(context).size.width),
                            // margin: getMargin(top: 15),
                            decoration:
                            BoxDecoration(color: ColorConstant.gray300)),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: getHorizontalSize(size.width/1.1),
                                margin: getMargin(left: 11, top: 11),
                                child: Text(
                                    "Add new Ingredient for your establishment",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style:
                                    AppStyle.txtRobotoRegular16Gray900))),
                      ])));
        });
  }





  onTapControlsSteppers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.restaurantsEditScreen);
  }

  onTapArrowleft59(BuildContext context) {
    Navigator.pop(context);
  }
}
