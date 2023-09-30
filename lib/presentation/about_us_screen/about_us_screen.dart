
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import 'package:http/http.dart' as http;

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(40.00),
                leadingWidth: 42,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 18, top: 8, bottom: 8),
                    onTap: () => onTapArrowleft45(context)),
                title: AppbarSubtitle1(
                    text: "About us", margin: getMargin(left: 14))),
            body: FutureBuilder<Map<String, dynamic>>(
    future: aboutUsFunction(),
    builder:(BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(snapshot.data!['aboutus'][0]['content'].toString(),
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
            maxLines: 20,
          ),
        );
      }
    }),
            // bottomNavigationBar: Container(
            //     width: size.width,
            //     padding: getPadding(left: 163, top: 8, right: 163, bottom: 8),
            //     decoration: AppDecoration.fillWhiteA700,
            //     child: Column(
            //         mainAxisSize: MainAxisSize.min,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           CustomImageView(
            //               svgPath: ImageConstant.imgRectangle,
            //               height: getVerticalSize(5.00),
            //               width: getHorizontalSize(48.00),
            //               radius:
            //                   BorderRadius.circular(getHorizontalSize(2.00)),
            //               margin: getMargin(bottom: 3))
            //         ]))
        ));
  }


  Future<Map<String, dynamic>> aboutUsFunction() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/about-us"),
    )..headers.addAll({
      'Content-Type': 'application/json',
      'Authorization': token!,
    });
    // request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    return object;
  }


  onTapArrowleft45(BuildContext context) {
    Navigator.pop(context);
  }
}
