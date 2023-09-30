import 'package:flutter/material.dart';

import '../../../ItemsAfterModel.dart';
import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../main.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/app_bar/appbar_image.dart';
import '../../../widgets/app_bar/appbar_subtitle_6.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_radio_button.dart';
import 'cart_item_widget.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CartDeliveryAddressNotAvailableScreen extends StatefulWidget {
  const CartDeliveryAddressNotAvailableScreen({super.key});

  @override
  State<CartDeliveryAddressNotAvailableScreen> createState() =>
      _CartDeliveryAddressNotAvailableScreenState();
}

class _CartDeliveryAddressNotAvailableScreenState
    extends State<CartDeliveryAddressNotAvailableScreen> {
  String radioGroup = "";

  String radioGroup1 = "";

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  double cartItemAmount = 0;
  List<ItemsAfterModel> itemList = <ItemsAfterModel>[];

  Future valFunction() async {
    cartItemAmount = 0;
     await objectBox.getItemList().then((value) {
       itemList = value;
      for (int i = 0; i < itemList.length; i++) {
        cartItemAmount = cartItemAmount + double.parse(itemList[i].originalPrice);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    // Future.delayed(Duration.zero, () async {
    //   cartItemAmount = 0;
    //   await objectBox.getItemList().then((value) {
    //     itemList = value;
    //     for (int i = 0; i < itemList.length; i++) {
    //       cartItemAmount = cartItemAmount + double.parse(itemList[i].originalPrice);
    //     }
    //   });
    //   setState(() {
    //   });
    // });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration.zero, () async {
    //   //your async 'await' codes goes here
    //   itemList = await objectBox.getItemList();
    //   // setState(() {});
    //   // print("reviewItemsreviewItemsreviewItems $reviewItems");
    // });

    Future.delayed(Duration.zero, () async {
      cartItemAmount = 0;
      await objectBox.getItemList().then((value) {
        itemList = value;
        for (int i = 0; i < itemList.length; i++) {
          cartItemAmount = cartItemAmount + double.parse(itemList[i].originalPrice);
        }
      });
      setState(() {
      });
    });

    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: ColorConstant.whiteA700,
          appBar: CustomAppBar(
              height: getVerticalSize(44.00),
              centerTitle: true,
              title: Container(
                  width: size.width,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 20, right: 21),
                            child: Row(children: [
                              AppbarImage(
                                  height: getVerticalSize(20.00),
                                  width: getHorizontalSize(18.00),
                                  svgPath: ImageConstant.imgArrowleft,
                                  // margin: getMargin(left: 285),
                                  onTap: () => onTapNotification1(context)),
                              AppbarSubtitle6(
                                  text: "Cart", margin: getMargin(bottom: 1)),
                            ])),
                        // Container(
                        //     height: getVerticalSize(1.00),
                        //     width: size.width,
                        //     margin: getMargin(top: 16),
                        //     decoration:
                        //         BoxDecoration(color: ColorConstant.gray300))
                      ])),
              styleType: Style.bgFillWhiteA700_1),
          body: SingleChildScrollView(
            child: itemList.isNotEmpty ? Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Stack(alignment: Alignment.bottomCenter, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20),
                                  child: Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgImageplaceholder,
                                            height: getSize(60.00),
                                            width: getSize(60.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(10.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 10, top: 7, bottom: 10),
                                            child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Text("La Pino’s Pizza",
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium16Gray900),
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 8),
                                                      child: Text(
                                                          "Lakewood, CA, USA",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRegular12Bluegray300))
                                                ]))
                                      ]))),
                          ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Container(
                                    height: getVerticalSize(1.00),
                                    width: size.width,
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray300));
                              },
                              itemCount: itemList!.length,
                              itemBuilder: (context, index) {
                                return CartItemWidget(
                                    index: index,
                                    itemList: itemList,
                                    removeItem: (value, id) async {
                                      await objectBox.removeItem(
                                          itemList[index].category,
                                          itemList[index].name,
                                          itemList[index].about,
                                          itemList[index]
                                              .originalPrice,
                                          itemList[index]
                                              .discountPrice,
                                          itemList[index].image,
                                          value,
                                          id);
                                      setState(() {
                                      });
                                    },
                                    addItems: (value, id) async {
                                      if(value == 1) {
                                        await objectBox.afterItemList(
                                            itemList[index].category,
                                            itemList[index].name,
                                            itemList[index].about,
                                            itemList[index]
                                                .originalPrice,
                                            itemList[index]
                                                .discountPrice,
                                            itemList[index].image,
                                            value,
                                            id);
                                      }else {
                                        await objectBox.updateItem(
                                            value,
                                            id);
                                      }
                                      setState(() {
                                      });
                                    });
                              }),

                          // Column(
                          //   children:
                          //   itemList.map((userone) {
                          //     return CartItemWidget(
                          //         index: index,
                          //         itemArray: userone,
                          //     );
                          //   }).toList(),
                          // ),
                          Padding(
                              padding: getPadding(left: 20, top: 20, right: 20),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgOffer,
                                        height: getSize(24.00),
                                        width: getSize(24.00)),
                                    Padding(
                                        padding: getPadding(
                                            left: 12, top: 3, bottom: 1),
                                        child: Text("Apply Coupon",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium16Gray900)),
                                    Spacer(),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getVerticalSize(12.00),
                                        width: getHorizontalSize(6.00),
                                        margin: getMargin(top: 0, bottom: 0),
                                        onTap: () {
                                          onTapImgArrowright(context);
                                        })
                                  ])),
                          Container(
                              height: getVerticalSize(5.00),
                              width: size.width,
                              margin: getMargin(top: 20),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray200,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(2.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 7),
                                  child: Text("Bill Details",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                      AppStyle.txtRobotoMedium16Gray900))),
                          Padding(
                              padding: getPadding(left: 20, top: 9, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(119.00),
                                        margin: getMargin(top: 1),
                                        child: Text(
                                            "Item Total\nDelivery Fees\nTaxes and Charges",
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoMedium14Bluegray300)),
                                    Container(
                                        width: getHorizontalSize(44.00),
                                        margin: getMargin(bottom: 1),
                                        child: Text("\$12.00\n\$2.00\n\$2.00",
                                            maxLines: null,
                                            textAlign: TextAlign.right,
                                            style: AppStyle
                                                .txtRobotoMedium14Gray900))
                                  ])),
                          Container(
                              height: getVerticalSize(1.00),
                              width: getHorizontalSize(335.00),
                              margin: getMargin(top: 11),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray300,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(1.00)))),
                          Padding(
                              padding: getPadding(left: 21, top: 6, right: 20),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: Text("To Pay",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold14)),
                                    Padding(
                                        padding: getPadding(bottom: 1),
                                        child: Text("\$16.00",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoBold14))
                                  ])),
                          Container(
                              height: getVerticalSize(5.00),
                              width: size.width,
                              margin: getMargin(top: 24),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray200,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(2.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 20, top: 9),
                                  child: Text("Delivery Address",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                      AppStyle.txtRobotoMedium16Gray900))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtAddAddresshere(context);
                                  },
                                  child: Padding(
                                      padding: getPadding(left: 20, top: 7),
                                      child: Text("+ Add Address here",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Gray90001)))),
                        ])),
              ]),
              // Container(
              //     height: getVerticalSize(56.00),
              //     width: size.width,
              //     margin: getMargin(top: 44),
              //     child: Stack(
              //         alignment: Alignment.centerLeft,
              //         children: [
              //           CustomImageView(
              //               imagePath:
              //                   ImageConstant.imgPartialstab,
              //               height: getVerticalSize(56.00),
              //               width: getHorizontalSize(374.00),
              //               alignment: Alignment.center),
              //           CustomImageView(
              //               imagePath: ImageConstant
              //                   .imgPartialstab56x74,
              //               height: getVerticalSize(56.00),
              //               width: getHorizontalSize(74.00),
              //               alignment: Alignment.centerLeft)
              //         ])),
              // CustomImageView(
              //     imagePath: ImageConstant.imgNativebottom,
              //     height: getVerticalSize(24.00),
              //     width: getHorizontalSize(374.00))
            ]) :


                Container(
                  padding: EdgeInsets.only(top: size.height/4),
                  height: size.height/2,
                  child: Column(
                     children: [
                       CustomImageView(
                           svgPath: ImageConstant.imgRefresh,
                           height: getVerticalSize(100.00),
                           width: getHorizontalSize(100.00),
                           margin: getMargin(top: 0, bottom: 0),
                           onTap: () {
                             onTapImgArrowright(context);
                           }),
                       Padding(
                           padding: getPadding(left: 20, right: 20, top: 11),
                           child: Text("Your Cart is Empty",
                               overflow: TextOverflow.ellipsis,
                               textAlign: TextAlign.center,
                               maxLines: 3,
                               style: AppStyle
                                   .txtInterBold24)),
                       Padding(
                           padding: getPadding(left: 20, right: 20, top: 19),
                           child: Text("Add something from the menu & enjoy delicious dish from restaurant",
                               overflow: TextOverflow.ellipsis,
                               textAlign: TextAlign.center,
                               maxLines: 3,
                               style: AppStyle
                                   .txtRobotoRegular16Gray90001)),

                     ],),
                ),

          ),
            floatingActionButton: itemList.isNotEmpty ? Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 80,
                width: size.width,
                padding:
                getPadding(left: 20, right: 20, bottom: 10),
                decoration: AppDecoration.fillIndigo900,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(left: 7, top: 9, bottom: 6),
                          child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("To Pay",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoRegular10),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("\$ $cartItemAmount",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoMedium16WhiteA700))
                              ])),
                      CustomButton(
                          height: 48,
                          width: 175,
                          text: "Proceed to Pay",
                          margin: getMargin(top: 1),
                          variant: ButtonVariant.FillWhiteA700,
                          shape: ButtonShape.CircleBorder24,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle:
                          ButtonFontStyle.RobotoBold16Gray90001,
                          onTap: () => onTapProceedtopay(context))
                    ]))) : Container(),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,

      // bottomNavigationBar:
          //     CustomBottomBar(onChanged: (BottomBarEnum type) {})
        ));
  }

  onTapImgArrowright(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.couponCodeScreen);
  }

  onTapTxtAddAddresshere(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.addDeliveryAddressScreen);
  }

  onTapProceedtopay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.checkoutIfNoAnyCardsAddedScreen);
  }

  onTapNotification1(BuildContext context) {
    Navigator.pop(context);
  }
}
