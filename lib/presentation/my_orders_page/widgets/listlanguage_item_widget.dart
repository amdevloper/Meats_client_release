import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../presentation/new_order_details_screen/new_order_details_screen.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_button.dart';
import '../../prepare_order_full_details_screen/prepare_order_full_details_screen.dart';



class ListlanguageNewOrderItemWidget extends StatefulWidget {
  List<dynamic>? objectForOrderList;

  VoidCallback? onTapTxtLanguage;

  VoidCallback? onTapReject;

  VoidCallback? onUIRefresh;

  int? index;

   ListlanguageNewOrderItemWidget({super.key, this.index,this.objectForOrderList,this.onTapReject,this.onTapTxtLanguage,this.onUIRefresh});

  @override
  State<ListlanguageNewOrderItemWidget> createState() => _ListlanguageNewOrderItemWidgetState();
}


class _ListlanguageNewOrderItemWidgetState extends State<ListlanguageNewOrderItemWidget> {

  String radioGroup = "";

  String radioGroup1 = "";

  List<dynamic> orderList = [];
  Map<String, dynamic>? objectForOrderListItems;
  var index;
  var preparationTime;

  @override
  void initState() {
    // TODO: implement initState
    index = widget.index;
    preparationTime =  widget.objectForOrderList![index!]["preparation_time"] ?? 30;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: () async {
          final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewOrderDetailsScreen(arguments: widget.objectForOrderList![widget.index!]),
              )).then((value){
            widget.onUIRefresh!();
          }
          );

          // widget.onTapTxtLanguage!();
    },
      child: Container(
          padding: getPadding(
            top: 19,
            bottom: 15,
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
                  right: 22,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Order ID: ${widget.objectForOrderList![index!]["id"]}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14,
                    ),
                    Text(
                      "${widget.objectForOrderList![index!]["time"]}",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14Bluegray500,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 19,
                    top: 12,
                  ),
                  child: Text(
                    " ${widget.objectForOrderList![index!]["items"].length} Orders by ${widget.objectForOrderList![index!]["user_name"]}",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoRegular10,
                  ),
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
          itemCount: widget.objectForOrderList![index!]["items"].length,
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
                          child: Text("${widget.objectForOrderList![index!]["items"][indexv]["name"]}"),
                        ),
                      ])),
                  Padding(
                    padding: getPadding(
                      bottom: 1,
                    ),
                    child: Text(
                      // "6",
                       "\$ ${widget.objectForOrderList![index!]["items"][indexv]["price"]}",
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
                  top: 11,
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
                          "Total Bill:  \$ ${widget.objectForOrderList![index!]["price"]}",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular12,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          72.00,
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
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 4,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 9,
                        bottom: 8,
                      ),
                      child: Text(
                        "Set food preparation time",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12Gray900,
                      ),
                    ),
                    Container(
                      // padding: getPadding(
                      //   left: ,
                      //   top: 6,
                      //   right: 5,
                      //   bottom: 6,
                      // ),
                      decoration: AppDecoration.outlineGray3003.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {
                            setState(() {
                              if(preparationTime > 30) {
                                preparationTime = preparationTime - 5;
                              }
                            });
                          }, child: const Icon( // <-- Icon
                            Icons.remove,
                          )),
                          Text(
                            "$preparationTime min",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium14,
                          ),
                          TextButton(onPressed: () {
                            setState(() {
                              preparationTime = preparationTime + 5;
                            });
                          }, child: const Icon( // <-- Icon
                            Icons.add,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      height: 40,
                      width: 140,
                      text: "Reject",
                      variant: ButtonVariant.OutlineGray9004f_1,
                      shape: ButtonShape.CircleBorder20,
                      padding: ButtonPadding.PaddingAll9,
                      fontStyle: ButtonFontStyle.RobotoBold14,
                      onTap: () async {
                        final SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setString('rejectedId', "${widget.objectForOrderList![index!]["id"]}");
                        await prefs.setString('rejectedTime', "${widget.objectForOrderList![index!]["time"]}");
                        widget.onTapReject!();
                      },
                    ),
                    CustomButton(
                      onTap: () async {
                        final SharedPreferences prefs = await SharedPreferences.getInstance();
                        await prefs.setString('acceptOrderId', "${widget.objectForOrderList![index!]["id"]}");
                        widget.onTapTxtLanguage!();
                      },
                      height: 40,
                      width: 140,
                      text: "Accept",
                      margin: getMargin(
                        left: 15,
                      ),
                      shape: ButtonShape.CircleBorder20,
                      padding: ButtonPadding.PaddingAll9,
                      fontStyle: ButtonFontStyle.RobotoBold14,
                    ),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}
