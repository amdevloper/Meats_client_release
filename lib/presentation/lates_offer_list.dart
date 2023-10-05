import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_image_view.dart';

class LatestOfferList extends StatefulWidget {
  Function? onTapImgImagePlaceholderOne;
  Map<String, dynamic>? listOfRestarunt;
  final int? index;

   LatestOfferList({super.key, this.listOfRestarunt, this.index, this.onTapImgImagePlaceholderOne});

  @override
  State<LatestOfferList> createState() => _LatesOfferListState();
}

class _LatesOfferListState extends State<LatestOfferList> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
         widget.onTapImgImagePlaceholderOne!(widget.listOfRestarunt);
      },
      child: Container(
        // height: 300,
        // width: 200,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                      alignment: Alignment
                          .bottomRight,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20), // Image border
                          child: SizedBox.fromSize(
                            // size: Size.fromRadius(48), // Image radius
                            child:  CustomImageView(
                                imagePath:
                                ImageConstant
                                    .imgImage2,
                                height: getSize(
                                    130.00),
                                width: getSize(
                                    120.00),

                                alignment:
                                Alignment.topLeft),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisSize: MainAxisSize.max,
                              children: [
                            Container(
                                // width: getHorizontalSize(51.00),
                                margin: getMargin(top: 14, bottom: 103,right: 50),
                                padding: getPadding(left: 6, top: 2, bottom: 2),
                                decoration: AppDecoration.txtFillIndigo900,
                                child: Text("20 % Off",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium10WhiteA700)),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Icon(Icons.shopping_cart),
                                ),
                          ])),

                         if(widget.listOfRestarunt!["rating"] != null) ...[
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Positioned(
                              right: 5,
                              bottom: 5,
                              child: Container(
                                margin: getMargin(bottom: 8,right: 11),
                                width: 45,
                                height: 20,
                                decoration: AppDecoration
                                    .outlineIndigo900
                                    .copyWith(
                                    borderRadius:
                                    BorderRadiusStyle.roundedBorder47),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 5),
                                     Text(widget.listOfRestarunt!["rating"] ?? ''),
                                    // Text("4.5"),
                                    const SizedBox(width: 5),
                                    CustomImageView(svgPath:ImageConstant.imgStar),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ]),

                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("Expire in:8 hr 10 min",
                      // child: Text("hihio",

                      style: AppStyle.txtRobotoMedium14Gray90001.copyWith(
                        color: ColorConstant.indigo90090,
                      ),),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                     child: Text(widget.listOfRestarunt!["name"],
                    // child: Text("hihio",

                      style: AppStyle.txtRobotoMedium16Black900.copyWith(
                        color: ColorConstant.gray900,
                      ),),
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(top: 5),
                  //       child: Text(
                  //         "\$ 6",
                  //         // "\$ ${widget.arguments["items"][indexv]["price"]}",
                  //         overflow: TextOverflow.ellipsis,
                  //         textAlign: TextAlign.left,
                  //         style: AppStyle.txtRobotoMedium14Gray90001,
                  //       ),
                  //     ),
                  //     SizedBox(width: 10),
                  //     Stack(
                  //         // alignment: Alignment
                  //         //     .center,
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.only(top: 5),
                  //             child: Text(
                  //               "\$ 6",
                  //               // "\$ ${widget.arguments["items"][indexv]["price"]}",
                  //               overflow: TextOverflow.ellipsis,
                  //               textAlign: TextAlign.left,
                  //               style: AppStyle.txtRobotoMedium12Bluegray3001,
                  //             ),
                  //           ),
                  //
                  //             Padding(
                  //               padding: const EdgeInsets.only(top: 10),
                  //               child: Positioned(
                  //                 right: 5,
                  //                 bottom: 5,
                  //                 child: Container(
                  //                   margin: getMargin(right: 11),
                  //                   width: 20,
                  //                   height: 1,
                  //                   color: Colors.grey,
                  //               ),
                  //              ),
                  //             ),
                  //         ]),
                  //
                  //
                  //
                  //   ],
                  // ),
                ],
              ),
              const SizedBox(width: 15),
            ],
          )
      ),
    );

  }
}
