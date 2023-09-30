import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../routes/app_routes.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';

class Listrectangle4322ItemWidget extends StatefulWidget {
   int? index;
   Map<String, dynamic>? itemArray;
    Function? addItems;
    Function? removeItem;

   VoidCallback? addCustomizationPage;
   Listrectangle4322ItemWidget({super.key, this.index,this.itemArray, this.addItems, this.addCustomizationPage, this.removeItem});

  @override
  State<Listrectangle4322ItemWidget> createState() => _Listrectangle4322ItemWidgetState();
}

class _Listrectangle4322ItemWidgetState extends State<Listrectangle4322ItemWidget> {

  int? numberOfItems = 0;

  @override
  Widget build(BuildContext context) {
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
                  widget.itemArray!["name"],
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
                        widget.itemArray!["about"],
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
                      "\$ ${ widget.itemArray!["discountPrice"]}",
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
                        "\$ ${ widget.itemArray!["originalPrice"]}",
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
            left: 22,
            bottom: 56,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              widget.itemArray!["numberOfItem"] == null ? CustomButton(
                height: 42,
                width: 83,
                text: "Add",
                variant: ButtonVariant.OutlineGray300_1,
                fontStyle: ButtonFontStyle.RobotoMedium16Gray900,
                onTap: () async {
                  numberOfItems = numberOfItems! + 1;
                 await widget.addItems!(numberOfItems!, widget.itemArray!["id"]);
                  // setState(() {
                  // });
                },
              ) :
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
                          padding: const EdgeInsets.only(right: 4),
                          width: 35,
                          child: TextButton(
                              onPressed: () async {
                                if(widget.itemArray!["numberOfItem"]! > 0) {
                                  numberOfItems = numberOfItems! - 1;
                                  await widget.removeItem!(numberOfItems!, widget.itemArray![widget.index!].id);
                                }
                              }, child: const Icon(Icons.remove)),
                        ),
                        const SizedBox(width: 15,),
                        Text("$numberOfItems", overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: AppStyle.txtRobotoMedium16Gray900),
                        SizedBox(
                            width: 35,
                            child: TextButton(
                                onPressed: () async {
                                  if(widget.itemArray!["numberOfItem"]! > 0) {
                                    numberOfItems = numberOfItems! + 1;
                                    await widget.addItems!(numberOfItems!, widget.itemArray![widget.index!].id);
                                  }
                                }, child: const Icon(Icons.add))),
                      ])
              ),

              // Padding(
              //   padding: getPadding(
              //     top: 5,
              //   ),
              //   child: GestureDetector(
              //     onTap: () {
              //       widget.addCustomizationPage!();
              //     },
              //     child: Text(
              //       "Customization",
              //       overflow: TextOverflow.ellipsis,
              //       textAlign: TextAlign.left,
              //       style: AppStyle.txtRobotoRegular8,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
