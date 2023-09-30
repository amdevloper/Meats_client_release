import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../ItemsAfterModel.dart';
import '../../../widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class CartItemWidget extends StatefulWidget {
  final int? index;
  List<ItemsAfterModel>? itemList = <ItemsAfterModel>[];

  CartItemWidget({super.key, this.index, this.itemList, this.removeItem,this.addItems});

  Function? addItems;
  Function? removeItem;


  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {

  int? numberOfItems;

  @override
  Widget build(BuildContext context) {
    numberOfItems = widget.itemList![widget.index!].numberOfItem;
    return Column(
      children: [
        Padding(
            padding: getPadding(
                left: 20,
                top: 1,
                right: 20),
            child: Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
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
                      Text(
                          widget.itemList![widget.index!].name,
                          maxLines: null,
                          textAlign:
                          TextAlign.left,
                          style: AppStyle.txtRobotoMedium16Gray900),
                      ])),
                  Container(
                      padding:
                      getPadding(
                          all:
                          0),
                      width: 115,
                      height: 40,
                      decoration: AppDecoration
                          .outlineGray3002
                          .copyWith(
                          borderRadius: BorderRadiusStyle
                              .circleBorder12),
                      child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 4),
                              width: 35,
                              child: TextButton(
                                  onPressed: () async {
                                    if(numberOfItems! > 0) {
                                      numberOfItems = numberOfItems! - 1;
                                      await widget.removeItem!(numberOfItems!, widget.itemList![widget.index!].id);
                                    }
                                  }, child: const Icon(Icons.remove)),
                            ),
                            const SizedBox(width: 15,),
                            Text("$numberOfItems", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoMedium16Gray900),
                            SizedBox(
                                width: 35,
                                child: TextButton(
                                    onPressed: () async {
                                      if(numberOfItems! > 0) {
                                        numberOfItems = numberOfItems! + 1;
                                         await widget.addItems!(numberOfItems!, widget.itemList![widget.index!].id);
                                      }
                                    }, child: const Icon(Icons.add))),
                          ])
                  ),
                ])),
        Align(
            alignment: Alignment
                .centerRight,
            child: Padding(
                padding:
                getPadding(
                    left: 41,
                    right:
                    21),
                child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    children: [
                      Container(
                          width: getHorizontalSize(
                              183.00),
                          child: Text(
                              widget.itemList![widget.index!].about,
                              maxLines:
                              null,
                              textAlign:
                              TextAlign.left,
                              style: AppStyle.txtRobotoRegular12Bluegray300)),
                      Padding(
                          padding: getPadding(
                              top:
                              1,
                              bottom:
                              1),
                          child: Text(
                              "\$ ${widget.itemList![widget.index!].originalPrice}",
                              overflow:
                              TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14))
                    ]))),
        // Align(
        //     alignment: Alignment
        //         .centerLeft,
        //     child: Padding(
        //         padding:
        //         getPadding(
        //             left: 41,
        //             top: 4),
        //         child: Text(
        //             "Customize",
        //             overflow:
        //             TextOverflow
        //                 .ellipsis,
        //             textAlign:
        //             TextAlign
        //                 .left,
        //             style: AppStyle
        //                 .txtRobotoRegular8))),
        Container(
            height:
            getVerticalSize(
                1.00),
            width:
            getHorizontalSize(
                335.00),
            margin:
            getMargin(top: 9),
            decoration: BoxDecoration(
                color:
                ColorConstant
                    .gray300,
                borderRadius:
                BorderRadius.circular(
                    getHorizontalSize(
                        1.00)))),
      ],
    );
  }
}
