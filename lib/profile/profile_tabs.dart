import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../shared/theme/colors.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({
    Key? key,
    required this.text,
    this.icon,
    this.color,
    this.suffixIcon = false, required this.prefixIcon,
  }) : super(key: key);

  final String text;
  final IconData? icon;
  final IconData prefixIcon;
  final Color? color;
  final bool suffixIcon;

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          child: Row(
            children: [
              FaIcon(
                widget.prefixIcon,
                color: widget.color,
              ),
              const SizedBox(width: 9),
              Text(
                widget.text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: widget.color,
                ),
              ),
            ],
          ),
        ),
        widget.suffixIcon
            ? FlutterSwitch(
                width: 40.0,
                height: 20.0,
                valueFontSize: 0.0,
                toggleSize: 30.0,
                value: status,
                // borderRadius: 50.0,
                padding: 4,
                showOnOff: true,
                activeColor: AppColors.secondaryColorMain,
                onToggle: (val) {
                  setState(() {
                    status = val;
                  });
                },
              )
            : FaIcon(widget.icon)
      ]),
    );
  }
}
