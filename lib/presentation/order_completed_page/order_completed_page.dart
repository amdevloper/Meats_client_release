import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../order_completed_page/widgets/listlanguage1_item_widget.dart';
import 'package:flutter/material.dart';

class OrderCompletedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: getVerticalSize(20.00));
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Listlanguage1ItemWidget(
                      onTapTxtLanguage: () => onTapTxtLanguage(context));
                })));
  }

  onTapTxtLanguage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.orderCompletedDetailsScreen);
  }
}
