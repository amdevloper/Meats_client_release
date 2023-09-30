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
import '../gallery_full_view_screen/widgets/grid_item_widget.dart';
import 'package:flutter/material.dart';

class GalleryFullViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        bottom: true,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(777.00),
                        width: size.width,
                        decoration: AppDecoration.fillWhiteA700,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          // Align(
                          //     alignment: Alignment.topLeft,
                          //     child: Container(
                          //         height: getVerticalSize(29.00),
                          //         width: getHorizontalSize(125.00),
                          //         margin: getMargin(top: 250),
                          //         decoration: BoxDecoration(
                          //             color: ColorConstant.whiteA700))),
                          // Align(
                          //     alignment: Alignment.topCenter,
                          //     child: Container(
                          //         height: getVerticalSize(1.00),
                          //         width: size.width,
                          //         margin: getMargin(top: 55),
                          //         decoration: BoxDecoration(
                          //             color: ColorConstant.gray300))),
                          // Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child: Container(
                          //         height: getVerticalSize(1.00),
                          //         width: size.width,
                          //         margin: getMargin(bottom: 164),
                          //         decoration: BoxDecoration(
                          //             color: ColorConstant.gray300))),
                          // Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child: Padding(
                          //         padding: getPadding(left: 20, right: 20),
                          //         child: Column(
                          //             mainAxisSize: MainAxisSize.min,
                          //             crossAxisAlignment:
                          //                 CrossAxisAlignment.start,
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.start,
                          //             children: [
                          //               Text("View Gallery",
                          //                   overflow: TextOverflow.ellipsis,
                          //                   textAlign: TextAlign.left,
                          //                   style: AppStyle.txtRobotoMedium14),
                          //               Padding(
                          //                   padding: getPadding(top: 15),
                          //                   child: GridView.builder(
                          //                       shrinkWrap: true,
                          //                       gridDelegate:
                          //                           SliverGridDelegateWithFixedCrossAxisCount(
                          //                               mainAxisExtent:
                          //                                   getVerticalSize(
                          //                                       110.00),
                          //                               crossAxisCount: 3,
                          //                               mainAxisSpacing:
                          //                                   getHorizontalSize(
                          //                                       4.00),
                          //                               crossAxisSpacing:
                          //                                   getHorizontalSize(
                          //                                       4.00)),
                          //                       physics:
                          //                           NeverScrollableScrollPhysics(),
                          //                       itemCount: 9,
                          //                       itemBuilder: (context, index) {
                          //                         return GridItemWidget();
                          //                       }))
                          //             ]))),
                          // Align(
                          //     alignment: Alignment.bottomCenter,
                          //     child: Container(
                          //         width: size.width,
                          //         margin: getMargin(bottom: 183),
                          //         child: Column(
                          //             mainAxisSize: MainAxisSize.min,
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.start,
                          //             children: [
                          //               Container(
                          //                   height: getVerticalSize(1.00),
                          //                   width: size.width,
                          //                   decoration: BoxDecoration(
                          //                       color: ColorConstant.gray300)),
                          //               Padding(
                          //                   padding: getPadding(
                          //                       left: 20, top: 10, right: 24),
                          //                   child: Row(
                          //                       mainAxisAlignment:
                          //                           MainAxisAlignment
                          //                               .spaceBetween,
                          //                       children: [
                          //                         Padding(
                          //                             padding:
                          //                                 getPadding(bottom: 1),
                          //                             child: RichText(
                          //                                 text: TextSpan(
                          //                                     children: [
                          //                                       TextSpan(
                          //                                           text: "02",
                          //                                           style: TextStyle(
                          //                                               color: ColorConstant
                          //                                                   .gray900,
                          //                                               fontSize:
                          //                                                   getFontSize(
                          //                                                       14),
                          //                                               fontFamily:
                          //                                                   'Roboto',
                          //                                               fontWeight:
                          //                                                   FontWeight.w700)),
                          //                                       TextSpan(
                          //                                           text: " ",
                          //                                           style: TextStyle(
                          //                                               color: ColorConstant
                          //                                                   .gray900,
                          //                                               fontSize:
                          //                                                   getFontSize(
                          //                                                       14),
                          //                                               fontFamily:
                          //                                                   'Roboto',
                          //                                               fontWeight:
                          //                                                   FontWeight.w500)),
                          //                                       TextSpan(
                          //                                           text:
                          //                                               "Posts",
                          //                                           style: TextStyle(
                          //                                               color: ColorConstant
                          //                                                   .blueGray300,
                          //                                               fontSize:
                          //                                                   getFontSize(
                          //                                                       14),
                          //                                               fontFamily:
                          //                                                   'Roboto',
                          //                                               fontWeight:
                          //                                                   FontWeight.w500))
                          //                                     ]),
                          //                                 textAlign:
                          //                                     TextAlign.left)),
                          //                         Padding(
                          //                             padding:
                          //                                 getPadding(bottom: 1),
                          //                             child: RichText(
                          //                                 text: TextSpan(
                          //                                     children: [
                          //                                       TextSpan(
                          //                                           text: "24",
                          //                                           style: TextStyle(
                          //                                               color: ColorConstant
                          //                                                   .gray900,
                          //                                               fontSize:
                          //                                                   getFontSize(
                          //                                                       14),
                          //                                               fontFamily:
                          //                                                   'Roboto',
                          //                                               fontWeight:
                          //                                                   FontWeight.w700)),
                          //                                       TextSpan(
                          //                                           text: " ",
                          //                                           style: TextStyle(
                          //                                               color: ColorConstant
                          //                                                   .gray900,
                          //                                               fontSize:
                          //                                                   getFontSize(
                          //                                                       14),
                          //                                               fontFamily:
                          //                                                   'Roboto',
                          //                                               fontWeight:
                          //                                                   FontWeight.w500)),
                          //                                       TextSpan(
                          //                                           text:
                          //                                               "Followers",
                          //                                           style: TextStyle(
                          //                                               color: ColorConstant
                          //                                                   .blueGray300,
                          //                                               fontSize:
                          //                                                   getFontSize(
                          //                                                       14),
                          //                                               fontFamily:
                          //                                                   'Roboto',
                          //                                               fontWeight:
                          //                                                   FontWeight.w500))
                          //                                     ]),
                          //                                 textAlign:
                          //                                     TextAlign.left)),
                          //                         Padding(
                          //                             padding:
                          //                                 getPadding(top: 1),
                          //                             child: RichText(
                          //                                 text: TextSpan(
                          //                                     children: [
                          //                                       TextSpan(
                          //                                           text: "20",
                          //                                           style: TextStyle(
                          //                                               color: ColorConstant
                          //                                                   .gray900,
                          //                                               fontSize:
                          //                                                   getFontSize(
                          //                                                       14),
                          //                                               fontFamily:
                          //                                                   'Roboto',
                          //                                               fontWeight:
                          //                                                   FontWeight.w700)),
                          //                                       TextSpan(
                          //                                           text:
                          //                                               " Following",
                          //                                           style: TextStyle(
                          //                                               color: ColorConstant
                          //                                                   .blueGray300,
                          //                                               fontSize:
                          //                                                   getFontSize(
                          //                                                       14),
                          //                                               fontFamily:
                          //                                                   'Roboto',
                          //                                               fontWeight:
                          //                                                   FontWeight.w500))
                          //                                     ]),
                          //                                 textAlign:
                          //                                     TextAlign.left))
                          //                       ])),
                          //               Container(
                          //                   height: getVerticalSize(1.00),
                          //                   width: size.width,
                          //                   margin: getMargin(top: 10),
                          //                   decoration: BoxDecoration(
                          //                       color: ColorConstant.gray300)),
                          //               Container(
                          //                   width: getHorizontalSize(327.00),
                          //                   margin: getMargin(top: 22),
                          //                   child: RichText(
                          //                       text: TextSpan(children: [
                          //                         TextSpan(
                          //                             text: "Popular Dishes\n",
                          //                             style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .gray900,
                          //                                 fontSize:
                          //                                     getFontSize(14),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w500)),
                          //                         TextSpan(
                          //                             text: "",
                          //                             style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .gray900,
                          //                                 fontSize:
                          //                                     getFontSize(14),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w400)),
                          //                         TextSpan(
                          //                             text:
                          //                                 "Tandoori Paneer Pizza, Stuffed Garlic Bread, White Sauce Pasta, Pizzas, Pasta\r\n\r\n",
                          //                             style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .blueGray300,
                          //                                 fontSize:
                          //                                     getFontSize(14),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w400)),
                          //                         TextSpan(
                          //                             text:
                          //                                 "People Say This Place Is Known For",
                          //                             style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .gray900,
                          //                                 fontSize:
                          //                                     getFontSize(14),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w500)),
                          //                         TextSpan(
                          //                             text:
                          //                                 "\r\n\nEconomical, Nice Crowd, Prompt Service, Portion, Concept, Location\r\n\r\n",
                          //                             style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .blueGray300,
                          //                                 fontSize:
                          //                                     getFontSize(14),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w400)),
                          //                         TextSpan(
                          //                             text:
                          //                                 "Average Cost\r\n\n",
                          //                             style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .gray900,
                          //                                 fontSize:
                          //                                     getFontSize(14),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w500)),
                          //                         TextSpan(
                          //                             text:
                          //                                 "\$20.00 for two people (approx.)\r\n\r\nExclusive of applicable taxes and charges, if any\r\n\r\nHow do we calculate cost for two?\r\n\r\nCash and Cards accepted Digital payments accepted",
                          //                             style: TextStyle(
                          //                                 color: ColorConstant
                          //                                     .blueGray300,
                          //                                 fontSize:
                          //                                     getFontSize(14),
                          //                                 fontFamily: 'Roboto',
                          //                                 fontWeight:
                          //                                     FontWeight.w400))
                          //                       ]),
                          //                       textAlign: TextAlign.left))
                          //             ]))),
                          // Align(
                          //     alignment: Alignment.topLeft,
                          //     child: Card(
                          //         clipBehavior: Clip.antiAlias,
                          //         elevation: 0,
                          //         margin: getMargin(left: 19, top: 76),
                          //         color: ColorConstant.gray300,
                          //         shape: RoundedRectangleBorder(
                          //             side: BorderSide(
                          //                 color: ColorConstant.gray300,
                          //                 width: getHorizontalSize(1.00)),
                          //             borderRadius: BorderRadius.circular(
                          //                 getHorizontalSize(58.00))),
                          //         child: Container(
                          //             height: getVerticalSize(117.00),
                          //             width: getHorizontalSize(308.00),
                          //             decoration: AppDecoration.outlineGray3002
                          //                 .copyWith(
                          //                     borderRadius: BorderRadiusStyle
                          //                         .roundedBorder58),
                          //             child: Stack(
                          //                 alignment: Alignment.center,
                          //                 children: [
                          //                   Align(
                          //                       alignment: Alignment.topRight,
                          //                       child: Container(
                          //                           height:
                          //                               getVerticalSize(31.00),
                          //                           width: getHorizontalSize(
                          //                               56.00),
                          //                           decoration: BoxDecoration(
                          //                               color: ColorConstant
                          //                                   .gray300,
                          //                               borderRadius:
                          //                                   BorderRadius.circular(
                          //                                       getHorizontalSize(
                          //                                           15.00)),
                          //                               border: Border.all(
                          //                                   color: ColorConstant
                          //                                       .gray300,
                          //                                   width:
                          //                                       getHorizontalSize(
                          //                                           1.00))))),
                          //                   Align(
                          //                       alignment: Alignment.center,
                          //                       child: Container(
                          //                           decoration: BoxDecoration(
                          //                               borderRadius:
                          //                                   BorderRadius.circular(
                          //                                       getHorizontalSize(
                          //                                           58.00))),
                          //                           child: Column(
                          //                               mainAxisSize:
                          //                                   MainAxisSize.min,
                          //                               crossAxisAlignment:
                          //                                   CrossAxisAlignment
                          //                                       .start,
                          //                               mainAxisAlignment:
                          //                                   MainAxisAlignment
                          //                                       .start,
                          //                               children: [
                          //                                 Padding(
                          //                                     padding:
                          //                                         getPadding(
                          //                                             left: 1),
                          //                                     child: Row(
                          //                                         children: [
                          //                                           Text(
                          //                                               "La Pino’s Pizza",
                          //                                               overflow:
                          //                                                   TextOverflow
                          //                                                       .ellipsis,
                          //                                               textAlign:
                          //                                                   TextAlign
                          //                                                       .left,
                          //                                               style: AppStyle
                          //                                                   .txtRobotoBold24Gray900),
                          //                                           Container(
                          //                                               width: getHorizontalSize(
                          //                                                   35.00),
                          //                                               margin: getMargin(
                          //                                                   left:
                          //                                                       6,
                          //                                                   top:
                          //                                                       9,
                          //                                                   bottom:
                          //                                                       5),
                          //                                               padding: getPadding(
                          //                                                   left:
                          //                                                       8,
                          //                                                   top:
                          //                                                       1,
                          //                                                   right:
                          //                                                       8,
                          //                                                   bottom:
                          //                                                       1),
                          //                                               decoration: AppDecoration.txtFillTealA400.copyWith(
                          //                                                   borderRadius: BorderRadiusStyle
                          //                                                       .txtRoundedBorder4),
                          //                                               child: Text(
                          //                                                   "Open",
                          //                                                   overflow:
                          //                                                       TextOverflow.ellipsis,
                          //                                                   textAlign: TextAlign.left,
                          //                                                   style: AppStyle.txtRobotoMedium8)),
                          //                                           Padding(
                          //                                               padding: getPadding(
                          //                                                   left:
                          //                                                       77,
                          //                                                   top:
                          //                                                       4,
                          //                                                   bottom:
                          //                                                       5),
                          //                                               child: Text(
                          //                                                   "Edit",
                          //                                                   overflow:
                          //                                                       TextOverflow.ellipsis,
                          //                                                   textAlign: TextAlign.left,
                          //                                                   style: AppStyle.txtRobotoMedium16Gray900))
                          //                                         ])),
                          //                                 Padding(
                          //                                     padding:
                          //                                         getPadding(
                          //                                             left: 1,
                          //                                             top: 9),
                          //                                     child: Text(
                          //                                         "Pizza, Italian",
                          //                                         overflow:
                          //                                             TextOverflow
                          //                                                 .ellipsis,
                          //                                         textAlign:
                          //                                             TextAlign
                          //                                                 .left,
                          //                                         style: AppStyle
                          //                                             .txtRobotoRegular16Gray900)),
                          //                                 CustomButton(
                          //                                     height: 19,
                          //                                     width: 46,
                          //                                     text: "4.5",
                          //                                     margin: getMargin(
                          //                                         top: 7),
                          //                                     variant: ButtonVariant
                          //                                         .OutlineGray300,
                          //                                     shape: ButtonShape
                          //                                         .RoundedBorder9,
                          //                                     padding:
                          //                                         ButtonPadding
                          //                                             .PaddingT1,
                          //                                     fontStyle:
                          //                                         ButtonFontStyle
                          //                                             .RobotoRegular12Gray900,
                          //                                     suffixWidget: Container(
                          //                                         margin:
                          //                                             getMargin(
                          //                                                 left:
                          //                                                     4),
                          //                                         child: CustomImageView(
                          //                                             svgPath:
                          //                                                 ImageConstant
                          //                                                     .imgStar))),
                          //                                 Padding(
                          //                                     padding:
                          //                                         getPadding(
                          //                                             left: 1,
                          //                                             top: 17),
                          //                                     child: Text(
                          //                                         "Lakewood, CA, USA",
                          //                                         overflow:
                          //                                             TextOverflow
                          //                                                 .ellipsis,
                          //                                         textAlign:
                          //                                             TextAlign
                          //                                                 .left,
                          //                                         style: AppStyle
                          //                                             .txtRobotoRegular14))
                          //                               ])))
                          //                 ])))),
                          // CustomImageView(
                          //     svgPath: ImageConstant.imgLightbulb,
                          //     height: getSize(21.00),
                          //     width: getSize(21.00),
                          //     alignment: Alignment.topRight,
                          //     margin: getMargin(top: 174, right: 51)),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: size.width,
                                  padding: getPadding(left: 12, right: 12),
                                  decoration: AppDecoration.fillGray900ab,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightWhiteA700,
                                            height: getVerticalSize(18.00),
                                            width: getHorizontalSize(26.00),
                                            alignment: Alignment.centerRight,
                                            onTap: () {
                                              onTapImgArrowright(context);
                                            }),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse7,
                                            height: getVerticalSize(337.00),
                                            width: getHorizontalSize(334.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            margin: getMargin(top: 185)),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgFileWhiteA700,
                                            height: getVerticalSize(26.00),
                                            width: getHorizontalSize(67.00),
                                            margin:
                                                getMargin(top: 21, bottom: 190))
                                      ])))
                        ]))))));
  }

  onTapImgArrowright(BuildContext context) {
    Navigator.pop(context);
  }

  onTapArrowleft58(BuildContext context) {
    Navigator.pop(context);
  }
}
