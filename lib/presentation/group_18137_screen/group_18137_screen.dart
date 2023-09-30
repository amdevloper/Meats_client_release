import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_form_field.dart';

class Group18137Screen extends StatelessWidget {
  List<String> dropdownItemList = ["Influencer", "Establishment", "Member", "Delivery"];

  TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                335.00,
              ),
              padding: getPadding(
                left: 1,
                top: 33,
                right: 1,
                bottom: 33,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Order Reject",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium24Black900,
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      333.00,
                    ),
                    margin: getMargin(
                      top: 15,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray300,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 19,
                      top: 18,
                      right: 27,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Order ID: 154780 ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoMedium14,
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "6:26 PM",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium12Bluegray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        267.00,
                      ),
                      margin: getMargin(
                        left: 19,
                        top: 17,
                      ),
                      child: Text(
                        "Are you sure you want to reject this order ?",
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular16Gray900,
                      ),
                    ),
                  ),
                  CustomTextFormField(
                      width: 335,
                      focusNode: FocusNode(),
                      controller: emailController,
                      hintText: " Select rejection result",
                      margin: getMargin(top: 19),
                      // isClickEnabled: true,
                      variant:
                      TextFormFieldVariant.OutlineIndigo900,
                      // fontStyle:
                      //     TextFormFieldFontStyle.RobotoMedium16,
                      textInputType: TextInputType.emailAddress),

                  // CustomDropDown(
                  //   width: 295,
                  //   focusNode: FocusNode(),
                  //   icon: Container(
                  //     margin: getMargin(
                  //       left: 30,
                  //       right: 19,
                  //     ),
                  //     child: CustomImageView(
                  //       svgPath: ImageConstant.imgArrowdownBlack900,
                  //     ),
                  //   ),
                  //   hintText: "Select rejection result",
                  //   margin: getMargin(
                  //     top: 23,
                  //   ),
                  //   padding: DropDownPadding.PaddingT17,
                  //   fontStyle: DropDownFontStyle.RobotoRegular12,
                  //   items: dropdownItemList,
                  //   onChanged: (value) {},
                  // ),
                  CustomButton(
                    height: 48,
                    width: 290,
                    text: "Submit",
                    margin: getMargin(
                      top: 28,
                    ),
                    onTap: () {
                      submitRejectRequest(context);
                    },
                  ),
                  Padding(
                    padding: getPadding(
                      top: 18,
                      bottom: 53,
                    ),
                    child: Text(
                      "Cancel",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold16Bluegray300,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<dynamic> submitRejectRequest(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');

    final response = await http.post(
      Uri.parse('http://ec2-34-227-30-202.compute-1.amazonaws.com/api/reject/order'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': token!,
      },
      body: jsonEncode({
          "status" : "Rejected",
          "reject_reason" : emailController.value.text,
          "restaurant_id" : userId,
          "orderId" : "order Id"
      }),
    );
    if (response.statusCode == 200) {
      Map<dynamic, dynamic> data = jsonDecode(response.body);
        Navigator.of(context).pop();
      }
    }
}
