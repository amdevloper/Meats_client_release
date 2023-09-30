import 'package:Meats/ItemsAfterModel.dart';
import 'package:Meats/ItemsBeforeModel.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../routes/app_routes.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_switch.dart';

class ListrectangleItemWidget extends StatefulWidget {
  ItemsAfterModel? itemList;
  final int? index;

   ListrectangleItemWidget({super.key, this.itemList, this.index});

  @override
  State<ListrectangleItemWidget> createState() => _ListrectangleItemWidgetState();
}

class _ListrectangleItemWidgetState extends State<ListrectangleItemWidget> {

  @override
  Widget build(BuildContext context) {

    // List<ItemsModel> listArray = widget.itemList;
    // print(widget.itemList.toString());
    // // print(widget.listItems);
    // print(widget.index);
    // print(widget.itemList!.name);



    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImageplaceholder4,
          height: getSize(
            50.00,
          ),
          width: getSize(
            50.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
          margin: getMargin(
            top: 1,
            bottom: 52,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 10,
            top: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: getHorizontalSize(
                  15.00,
                ),
                padding: getPadding(
                  all: 4,
                ),
                decoration: AppDecoration.outlineTeal3001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder2,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getSize(
                        7.00,
                      ),
                      width: getSize(
                        7.00,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.teal300,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            3.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Text(
                  widget.itemList!.name,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium14Gray900,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  169.00,
                ),
                margin: getMargin(
                  top: 3,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                        widget.itemList!.about,
                        style: TextStyle(
                          color: ColorConstant.blueGray300,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "Read More",
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: Row(
                  children: [
                    Text(
                      widget.itemList!.discountPrice,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 5,
                        bottom: 1,
                      ),
                      child: Text(
                        widget.itemList!.originalPrice,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium12Bluegray300.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: getPadding(
            left: 1,
            bottom: 56,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                height: 42,
                width: 83,
                text: "Edit",
                variant: ButtonVariant.OutlineGray300_1,
                fontStyle: ButtonFontStyle.RobotoMedium16Gray900,
                onTap: () {
                 Navigator.pushNamed(context, AppRoutes.addToCartScreen);
                },
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: Column(
                  children: [
                  CustomSwitch(
                                    margin: getMargin(
                                        left:
                                        9,
                                        bottom:
                                        1),
                                    value:
                                    true,
                                    onChanged:
                                        (value) {}),
                   Padding(
                                    padding: getPadding(
                                        left:
                                        11),
                                    child: Text(
                                        "In Stock",
                                        overflow:
                                        TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular16Gray90001))
                              ]),
                ),
              ],
             ),),
         ],
      );
  }
}
