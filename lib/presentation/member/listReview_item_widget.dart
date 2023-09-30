import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListReviewItemWidget extends StatefulWidget {
  final int? index;
   var listOfItem;
   ListReviewItemWidget( {super.key, this.index,this.listOfItem});

  @override
  State<ListReviewItemWidget> createState() => _ListReviewItemWidgetState();
}

class _ListReviewItemWidgetState extends State<ListReviewItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: getPadding(top: 25),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: getPadding(bottom: 37),
                  child: Column(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath:
                            ImageConstant.imgEllipse78,
                            height: getSize(40.00),
                            width: getSize(40.00),
                            radius: BorderRadius.circular(
                                getHorizontalSize(20.00))),
                      ])),
              Padding(
                  padding: getPadding(left: 12),
                  child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(widget.listOfItem[widget.index]["name"],
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtRobotoRegular16Black900),
                          Padding(
                              padding: getPadding(
                                  left: 142, top: 3),
                              child: Text(widget.listOfItem[widget.index]["updatedAt"],
                                  overflow:
                                  TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtRobotoRegular12))
                        ]),
                        Padding(
                            padding: getPadding(top: 3),
                            child: Row(children: [
                              CustomImageView(
                                  svgPath:
                                  ImageConstant.imgStar,
                                  height: getSize(9.00),
                                  width: getSize(9.00)),
                              CustomImageView(
                                  svgPath:
                                  ImageConstant.imgStar,
                                  height: getSize(9.00),
                                  width: getSize(9.00),
                                  margin: getMargin(left: 4)),
                              CustomImageView(
                                  svgPath:
                                  ImageConstant.imgStar,
                                  height: getSize(9.00),
                                  width: getSize(9.00),
                                  margin: getMargin(left: 6)),
                              CustomImageView(
                                  svgPath:
                                  ImageConstant.imgStar,
                                  height: getSize(9.00),
                                  width: getSize(9.00),
                                  margin: getMargin(left: 4))
                            ])),
                        Container(
                            width: getHorizontalSize(260.00),
                            margin: getMargin(top: 9),
                            child: Text(
                                widget.listOfItem[widget.index]["review"],
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtRobotoRegular14Gray600)),
                      ]))
            ]));
  }
}
