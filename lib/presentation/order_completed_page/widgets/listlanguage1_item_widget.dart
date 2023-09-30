import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';

class Listlanguage1ItemWidget extends StatefulWidget {

  String radioGroup = "";

  String radioGroup1 = "";

  VoidCallback? onTapTxtLanguage;

  List<dynamic>? objectForOrderList;

  int? index;

  Listlanguage1ItemWidget({this.onTapTxtLanguage, this.objectForOrderList, this.index});

  @override
  State<Listlanguage1ItemWidget> createState() => _Listlanguage1ItemWidgetState();
}

class _Listlanguage1ItemWidgetState extends State<Listlanguage1ItemWidget> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: () {
            widget.onTapTxtLanguage!();
          },
      child: Container(
        padding: getPadding(
          top: 17,
          bottom: 11,
        ),
        decoration: AppDecoration.outlineGray300.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 4,
                    ),
                    child: Text(
                      "Order ID: ${widget.objectForOrderList![widget.index!]["id"]}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium12Gray900,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      "${widget.objectForOrderList![widget.index!]["time"]}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14Bluegray500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 19,
                top: 12,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    " ${widget.objectForOrderList![widget.index!]["items"].length} Orders by ${widget.objectForOrderList![widget.index!]["user_name"]}",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular10,
                  ),
                  Text(
                    "${widget.objectForOrderList![widget.index!]["status"]}",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: widget.objectForOrderList![widget.index!]["status"] == "Rejected" ? Colors.red : Colors.green),
                  ),
                ],
              ),
            ),
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                335.00,
              ),
              margin: getMargin(
                top: 12,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
              ),
            ),
            ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: getVerticalSize(3.00));
                },
                itemCount: widget.objectForOrderList![widget.index!]["items"].length,
                itemBuilder: (context, indexv) {
                  return Padding(
                    padding: getPadding(
                      left: 15,
                      top: 12,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Row(children: [
                              const Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(Icons.crop_square_sharp, color: Colors.green, size: 25,),
                                  Icon(Icons.circle, color: Colors.green, size: 8),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text("${widget.objectForOrderList![widget.index!]["items"][indexv]["name"]}"),
                              ),
                              // Padding(
                              //     padding: getPadding(
                              //         left: 4, bottom: 2),
                              //     child: Text("x1",
                              //         overflow: TextOverflow
                              //             .ellipsis,
                              //         textAlign:
                              //         TextAlign.left,
                              //         style: AppStyle
                              //             .txtRobotoRegular12Bluegray300))
                            ])),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            // "\$ 6",
                            "\$ ${widget.objectForOrderList![widget.index!]["items"][indexv]["price"]}",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium14Gray90001,
                          ),
                        ),
                      ],
                    ),
                  );
                }),

            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                335.00,
              ),
              margin: getMargin(
                top: 10,
              ),
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 20,
                  top: 9,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 2,
                      ),
                      child: Text(
                        "Total Bill:  \$${widget.objectForOrderList![widget.index!]["price"]}",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12,
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        75.00,
                      ),
                      margin: getMargin(
                        left: 8,
                      ),
                      padding: getPadding(
                        left: 8,
                        top: 2,
                        right: 8,
                        bottom: 2,
                      ),
                      decoration: AppDecoration.txtOutlineGray300.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder12,
                      ),
                      child: Text(
                        widget.objectForOrderList![widget.index!]["payment_method"] != null ?
                        "Paid" : "to be paid",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12Black900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
