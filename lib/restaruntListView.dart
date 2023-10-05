import 'package:Meats/theme/app_decoration.dart';
import 'package:Meats/theme/app_style.dart';
import 'package:Meats/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';

import 'core/utils/color_constant.dart';
import 'core/utils/image_constant.dart';
import 'core/utils/size_utils.dart';

class RestaurantListView extends StatefulWidget {
  Map<String, dynamic>? listOfRestarunt;
  final int? index;

  Function? onTapImgImagePlaceholderOne;
   RestaurantListView({super.key, this.onTapImgImagePlaceholderOne,this.index, this.listOfRestarunt});

  @override
  State<RestaurantListView> createState() => _RestaurantListViewState();
}

class _RestaurantListViewState extends State<RestaurantListView> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () {
         widget.onTapImgImagePlaceholderOne!(widget.listOfRestarunt);
        print("Hi Amit, How are you");
      },
      child: Container(
        // height: 300,
        // width: 200,
        child: Column(
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
                              171.00),
                          width: getSize(
                              171.00),
                          radius: BorderRadius
                              .circular(
                              getHorizontalSize(
                                  36.00)),
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
                        height: 23,
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
              child: Text(widget.listOfRestarunt!["name"],
                style: AppStyle.txtRobotoBold18Black9001.copyWith(
                  color: ColorConstant.gray900,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(widget.listOfRestarunt!["description"],
                style: AppStyle.txtInterRegular14Bluegray300.copyWith(
                  color: ColorConstant.blueGray300,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
