import 'dart:io';

import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_image_view.dart';

class GridtextTen1ItemWidget extends StatefulWidget {
  final dynamic index;
  VoidCallback? onTapImgImagePlaceholder;
  Function? onImageRemove;

  List? images = [];
   GridtextTen1ItemWidget({super.key, this.index, this.onTapImgImagePlaceholder, this.images,this.onImageRemove});

  @override
  State<GridtextTen1ItemWidget> createState() => _GridtextTen1ItemWidgetState();
}

class _GridtextTen1ItemWidgetState extends State<GridtextTen1ItemWidget> {

  @override
  Widget build(BuildContext context) {
    if(widget.index == 0) {
    return Padding(
        padding: getPadding(top: 0),
        child: Row(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  widget.onTapImgImagePlaceholder!();
                },
                child: Container(
                    padding: getPadding(
                        left: 23,
                        top: 11,
                        right: 23,
                        bottom: 11),
                    decoration: AppDecoration
                        .fillGray300
                        .copyWith(
                        borderRadius:
                        BorderRadiusStyle
                            .roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment:
                        MainAxisAlignment.end,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant
                                  .imgCameraBlueGray300,
                              height: getSize(32.00),
                              width: getSize(32.00),
                              margin:
                              getMargin(top: 11)),
                          Container(
                              width: getHorizontalSize(
                                  63.00),
                              margin:
                              getMargin(top: 11),
                              child: Text(
                                  "+ Add More\nImages",
                                  maxLines: null,
                                  textAlign:
                                  TextAlign.center,
                                  style: AppStyle
                                      .txtRobotoMedium12))
                        ])),
              ),
            ]));
    }else {
      return Container(
      height: getSize(
        109.00,
      ),
      width: getSize(
        109.00,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // CustomImageView(
          //   imagePath: widget.images![widget.index],
          //   height: getSize(
          //     109.00,
          //   ),
          //   width: getSize(
          //     109.00,
          //   ),
          //   radius: BorderRadius.circular(
          //     getHorizontalSize(
          //       16.00,
          //     ),
          //   ),
          //   alignment: Alignment.center,
          // ),
            Image.file(
            widget.images![widget.index],
            width: 109.0,
            height: 109.0,
            fit: BoxFit.fitHeight,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: getMargin(
                top: 81,
              ),
              padding: getPadding(
                left: 10,
                top: 2,
                right: 10,
                bottom: 2,
              ),
              decoration: AppDecoration.fillGray90090.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 3,
                    ),
                    child: Text(
                      "Edit",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRobotoRegular14WhiteA700,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // setState(() {
                        widget.onImageRemove!(widget.index);
                      // });
                    }, child:
                  // IconButton(
                  //   onPressed: () {
                  //     widget.onImageRemove!(widget.index);
                  // }, icon: const Icon(Icons.clear)),
                  CustomImageView(
                    svgPath: ImageConstant.imgArrowrightWhiteA700,
                    height: getSize(
                      12.00,
                    ),
                    width: getSize(
                      12.00,
                    ),
                    margin: getMargin(
                      top: 3,
                      bottom: 6,
                    ),
                  ), ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    }
  }
}
