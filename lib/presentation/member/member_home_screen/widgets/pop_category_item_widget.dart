import 'package:flutter/material.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_decoration.dart';
import '../../../../theme/app_style.dart';
import '../../../../widgets/custom_image_view.dart';

// ignore: must_be_immutable
class PopCategoryItemWidget extends StatefulWidget {
  VoidCallback? onTapImgImagePlaceholderOne;
  PopCategoryItemWidget({super.key, this.onTapImgImagePlaceholderOne});

  @override
  State<PopCategoryItemWidget> createState() => _PopCategoryItemWidgetState();
}

class _PopCategoryItemWidgetState extends State<PopCategoryItemWidget> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
        widget.onTapImgImagePlaceholderOne!();
        print("Hi Amit, How are you");
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
                                  const Text("4.5"),
                                  const SizedBox(width: 5),
                                  CustomImageView(svgPath:ImageConstant.imgStar),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("McDonald's",
                      style: AppStyle.txtRobotoMedium16Black900.copyWith(
                        color: ColorConstant.gray900,
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("15 km away",
                      style: AppStyle.txtInterRegular14Bluegray300.copyWith(
                        color: ColorConstant.blueGray300,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),
            ],
          )
      ),
    );
  }
}
