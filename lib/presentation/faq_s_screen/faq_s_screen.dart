import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_1.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../faq_s_screen/widgets/expandablelistquestioncounter_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FaqSScreen extends StatelessWidget {
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
                    onTap: () => onTapArrowleft48(context)),
                title: AppbarSubtitle1(
                    text: "FAQ’s", margin: getMargin(left: 14))),
            body: Container(
                width: size.width,
                padding: getPadding(top: 6, bottom: 6),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray300)),
                      FutureBuilder<Map<String, dynamic>>(
    future: faqUsFunction(),
    builder:(BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return CircularProgressIndicator();
      } else if (snapshot.hasError) {
        return Text('Error: ${snapshot.error}');
      } else {
        return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data!['faq']['content'].length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 11,right: 11),
                child: ExpandablelistquestioncounterItemWidget(
                  arguments: snapshot.data!['faq']['content'][index],
                ),
              );
            });
      }
    }
                      )
                    ])),
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

  Future<Map<String, dynamic>> faqUsFunction() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('token');
    int? userId = prefs.getInt('restarantId');
    // try {
    var request = http.Request(
      'GET',
      Uri.parse(
          "http://ec2-34-227-30-202.compute-1.amazonaws.com/api/get/faq"),
    )..headers.addAll({
      'Content-Type': 'application/json',
      'Authorization': token!,
    });
    var params = {
      "id": userId,
    };

    request.body = jsonEncode(params);
    http.StreamedResponse response = await request.send();
    Map<String, dynamic> object =
    await json.decode(await response.stream.bytesToString());
    return object;
  }


  onTapArrowleft48(BuildContext context) {
    Navigator.pop(context);
  }
}
