import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(32),
        width: getHorizontalSize(56),
        toggleSize: 28,
        borderRadius: getHorizontalSize(
          16.00,
        ),
        activeColor: ColorConstant.gray90001,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.gray300,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) => onChanged!(value),
      ),
    );
  }
}
