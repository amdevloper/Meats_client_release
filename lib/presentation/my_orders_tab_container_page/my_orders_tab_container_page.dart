import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_3.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../my_orders_page/my_orders_page.dart';
import '../order_completed_page/order_completed_page.dart';
import '../order_preparing_page/order_preparing_page.dart';

// ignore_for_file: must_be_immutable
class MyOrdersTabContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: ColorConstant.gray10001,
        body: Container(
          decoration: AppDecoration.fillGray10001,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        97.00,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle4335,
                            height: getVerticalSize(
                              97.00,
                            ),
                            width: getHorizontalSize(
                              375.00,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: size.width,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomAppBar(
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    title: AppbarSubtitle3(
                                      text: "My Orders",
                                      margin: getMargin(
                                        left: 20,
                                      ),
                                    ),
                                    actions: [
                                      AppbarImage(
                                        height: getVerticalSize(
                                          20.00,
                                        ),
                                        width: getHorizontalSize(
                                          18.00,
                                        ),
                                        svgPath: ImageConstant.imgNotification,
                                        margin: getMargin(
                                          left: 21,
                                          right: 21,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: size.width,
                                    margin: getMargin(
                                      top: 15,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray300,
                                    ),
                                  ),
                                  Container(
                                    width: size.width,
                                    margin: getMargin(
                                      top: 9,
                                    ),
                                    child: TabBar(
                                      //TODO: Please add tab controller
                                      tabs: [
                                        Tab(
                                          text: "New Order (05)",
                                        ),
                                        Tab(
                                          text: "Preparing (02)",
                                        ),
                                        Tab(
                                          text: "Completed (02)",
                                        ),
                                      ],
                                      labelColor: ColorConstant.gray90001,
                                      unselectedLabelColor:
                                          ColorConstant.blueGray300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        335.00,
                      ),
                      margin: getMargin(
                        left: 20,
                        top: 17,
                        right: 20,
                      ),
                      decoration: AppDecoration.fillGray10001,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getVerticalSize(
                              608.00,
                            ),
                            child: TabBarView(
                              //TODO: Please add tab controller
                              children: [
                                MyOrdersPage(),
                                OrderPreparingPage(),
                                OrderCompletedPage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
