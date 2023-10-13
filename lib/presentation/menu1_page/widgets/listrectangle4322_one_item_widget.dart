import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_switch.dart';

class Listrectangle4322OneItemWidget extends StatefulWidget {
  final int? index;
  final dynamic listValues;
  Function? onClick;
   Listrectangle4322OneItemWidget({super.key, this.index, this.listValues, this.onClick});

  @override
  State<Listrectangle4322OneItemWidget> createState() => _Listrectangle4322OneItemWidgetState();
}

class _Listrectangle4322OneItemWidgetState extends State<Listrectangle4322OneItemWidget> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: getVerticalSize(
      //   130.00,
      // ),
      width: getHorizontalSize(
      size.width
      ),
      padding: getPadding(left: 11,right:11),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: getMargin(
                left: 60,
                top: 3,
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
          ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: Container(
          //     height: getVerticalSize(
          //       32.00,
          //     ),
          //     width: getHorizontalSize(
          //       83.00,
          //     ),
          //     decoration: BoxDecoration(
          //       color: ColorConstant.gray300,
          //       borderRadius: BorderRadius.circular(
          //         getHorizontalSize(
          //           16.00,
          //         ),
          //       ),
          //       border: Border.all(
          //         color: ColorConstant.gray300,
          //         width: getHorizontalSize(
          //           1.00,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
      // CustomButton(
      //                                 height: 32,
      //                                 width: 83,
      //                                 text: "Edit",
      //                                 margin: getMargin(
      //                                     left: 95,
      //                                     bottom: 9),
      //                                 variant: ButtonVariant
      //                                     .OutlineGray300_1,
      //                                 shape: ButtonShape
      //                                     .CircleBorder16,
      //                                 padding:
      //                                     ButtonPadding
      //                                         .PaddingAll5,
      //                                 fontStyle:
      //                                     ButtonFontStyle
      //                                         .RobotoMedium16Gray900),

          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImageplaceholder,
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
                      bottom: 50,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 35,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.width / 1.65),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                right: 27,
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  widget.onClick!(widget.listValues);
                                },
                                child: Text(
                                  "Edit",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium16Gray900,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.listValues!["name"] ?? '',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium14,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  169.00,
                                ),
                                margin: getMargin(
                                  top: 1,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                        widget.listValues!["about"] ?? '',
                                        style: TextStyle(
                                          color: ColorConstant.blueGray300,
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // TextSpan(
                                      //   text: "Read More",
                                      //   style: TextStyle(
                                      //     color: ColorConstant.gray900,
                                      //     fontSize: getFontSize(
                                      //       12,
                                      //     ),
                                      //     fontFamily: 'Roboto',
                                      //     fontWeight: FontWeight.w400,
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              CustomSwitch(
                                margin: getMargin(
                                  left: 49,
                                  bottom: 2,
                                ),
                                value: true,
                                onChanged: (value) {
                                  setState(() {

                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 6,
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 2,
                                ),
                                child: Text(
                                 "\$ ${widget.listValues!["discountPrice"]}" ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium14Gray90001,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                  top: 2,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "\$ ${widget.listValues!["originalPrice"]}" ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium12.copyWith(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: size.width/2.2,
                                ),
                                child: Text(
                                  "In Stock",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRegular16Gray90001,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            height:
                            getVerticalSize(1.00),
                            width: getHorizontalSize(
                                size.width/1.6),
                            margin:
                            getMargin(top: 10),
                            decoration: BoxDecoration(
                                color: ColorConstant
                                    .gray300))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
