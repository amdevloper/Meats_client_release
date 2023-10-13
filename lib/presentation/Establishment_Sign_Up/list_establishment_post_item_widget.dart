import 'package:flutter/material.dart';

import '../../../../core/utils/size_utils.dart';
import '../../../../widgets/custom_checkbox.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';

// ignore: must_be_immutable


class ListestablishmentPostItemWidget extends StatefulWidget {

  final Map? listItemArray;

  const ListestablishmentPostItemWidget({Key? key,this.listItemArray}) : super(key: key);

  @override
  State<ListestablishmentPostItemWidget> createState() => _ListestablishmentPostItemWidgetState();
}

class _ListestablishmentPostItemWidgetState extends State<ListestablishmentPostItemWidget> {

  @override
  Widget build(BuildContext context) {
    // print("widget.listItemArraywidget.listItemArraywidget.listItemArray ${widget.listItemArray}");
    return Column(
      children: [
        Container(
            height: getVerticalSize(1.00),
            width: getHorizontalSize(374.00),
            margin: getMargin(top: 17),
            decoration: BoxDecoration(
                color: ColorConstant.gray300)),
        Padding(
            padding:
            getPadding(left: 18, top: 18, right: 20),
            child: Row(
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant
                          .imgImageplaceholder27x27,
                      height: getSize(27.00),
                      width: getSize(27.00),
                      radius: BorderRadius.circular(
                          getHorizontalSize(13.00))),
                  GestureDetector(
                      onTap: () {
                        // onTapTxtLaPinosPizza(context);
                      },
                      child: Padding(
                          padding: getPadding(
                              left: 7, top: 3, bottom: 4),
                          child: Text("La Pino’s Pizza",
                              overflow:
                              TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtRobotoBold16))),
                  // Spacer(),
                  // CustomImageView(
                  //     svgPath: ImageConstant.imgHeart,
                  //     height: getSize(25.00),
                  //     width: getSize(25.00),
                  //     margin: getMargin(top: 2)),
                  // GestureDetector(
                  //     onTap: () {
                  //       // onTapVector(context);
                  //     },
                  //     child: Container(
                  //         height: getVerticalSize(20.00),
                  //         width: getHorizontalSize(1.00),
                  //         margin: getMargin(
                  //             left: 17,
                  //             top: 4,
                  //             bottom: 2),
                  //         decoration: BoxDecoration(
                  //             color:
                  //             ColorConstant.whiteA700,
                  //             borderRadius:
                  //             BorderRadius.circular(
                  //                 getHorizontalSize(
                  //                     10.00)),
                  //             border: Border.all(
                  //                 color: ColorConstant
                  //                     .gray900,
                  //                 width:
                  //                 getHorizontalSize(
                  //                     1.00),
                  //                 strokeAlign: BorderSide.strokeAlignCenter))))
                ])),
        Container(
            padding: const EdgeInsets.only(left: 15,top: 12),
            height: getVerticalSize(201.00),
            width: getHorizontalSize(335.00),
            child: Image.network(widget.listItemArray!["image"])),

        // CustomImageView(
        //     imagePath: ImageConstant.imgImage201x335,
        //     height: getVerticalSize(201.00),
        //     width: getHorizontalSize(335.00),
        //     radius: BorderRadius.circular(
        //         getHorizontalSize(10.00)),
        //     margin: getMargin(top: 10)),
        Padding(
          padding: const EdgeInsets.only(left: 15,top: 12),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
               widget.listItemArray!["post"],
                overflow: TextOverflow
                    .ellipsis,
                textAlign:
                TextAlign.right,
                style: TextStyle(color: ColorConstant.gray900)),
          ),
        ),
        // Align(
        //     alignment: Alignment.centerLeft,
        //     child: Container(
        //         width: getHorizontalSize(319.00),
        //         margin: getMargin(left: 18, top: 5),
        //         child: RichText(
        //             text: TextSpan(children: [
        //               TextSpan(
        //                   text:
        //                   "Download App now: ",
        //                   style: TextStyle(
        //                       color:
        //                       ColorConstant.gray900,
        //                       fontSize: getFontSize(12),
        //                       fontFamily: 'Roboto',
        //                       fontWeight:
        //                       FontWeight.w400)),
        //               TextSpan(
        //                   text: "https://rb.gy/hdotmb",
        //                   style: TextStyle(
        //                       color:
        //                       ColorConstant.indigo900,
        //                       fontSize: getFontSize(12),
        //                       fontFamily: 'Roboto',
        //                       fontWeight:
        //                       FontWeight.w400))
        //             ]),
        //             textAlign: TextAlign.left))),
        Padding(
            padding:
            getPadding(left: 18, top: 8, right: 21),
            child: Row(
                mainAxisAlignment:
                MainAxisAlignment.start,
                crossAxisAlignment:
                CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding:
                      getPadding(top: 6, bottom: 4),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: widget.listItemArray!["likes"] ?? "0",
                                style: TextStyle(
                                    color: ColorConstant
                                        .gray900,
                                    fontSize:
                                    getFontSize(12),
                                    fontFamily: 'Roboto',
                                    fontWeight:
                                    FontWeight.w700)),
                            TextSpan(
                                text: " ",
                                style: TextStyle(
                                    color: ColorConstant
                                        .gray900,
                                    fontSize:
                                    getFontSize(12),
                                    fontFamily: 'Roboto',
                                    fontWeight:
                                    FontWeight.w500)),
                            TextSpan(
                                text: "Likes",
                                style: TextStyle(
                                    color: ColorConstant
                                        .blueGray300,
                                    fontSize:
                                    getFontSize(12),
                                    fontFamily: 'Roboto',
                                    fontWeight:
                                    FontWeight.w500))
                          ]),
                          textAlign: TextAlign.left)),
                  Padding(
                      padding: getPadding(
                          left: 30, top: 7, bottom: 3),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: widget.listItemArray!["comments"] ?? "0",
                                style: TextStyle(
                                    color: ColorConstant
                                        .gray900,
                                    fontSize:
                                    getFontSize(12),
                                    fontFamily: 'Roboto',
                                    fontWeight:
                                    FontWeight.w700)),
                            TextSpan(
                                text: " ",
                                style: TextStyle(
                                    color: ColorConstant
                                        .gray900,
                                    fontSize:
                                    getFontSize(12),
                                    fontFamily: 'Roboto',
                                    fontWeight:
                                    FontWeight.w500)),
                            TextSpan(
                                text: "Comments",
                                style: TextStyle(
                                    color: ColorConstant
                                        .blueGray300,
                                    fontSize:
                                    getFontSize(12),
                                    fontFamily: 'Roboto',
                                    fontWeight:
                                    FontWeight.w500))
                          ]),
                          textAlign: TextAlign.left)),
                  // Spacer(),
                  // CustomImageView(
                  //     svgPath: ImageConstant
                  //         .imgComputerBlueGray300,
                  //     height: getSize(26.00),
                  //     width: getSize(26.00))
                ])),
        // Container(
        //     height: getVerticalSize(1.00),
        //     width: getHorizontalSize(373.00),
        //     margin: getMargin(top: 14),
        //     decoration: BoxDecoration(
        //         color: ColorConstant.gray300)),

      ],
    );
  }
}
