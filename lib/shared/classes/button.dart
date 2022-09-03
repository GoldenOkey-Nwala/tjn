import 'package:flutter/material.dart';
import '../theme/colors.dart';

class ButtonDesign extends StatelessWidget {
  const ButtonDesign({
    Key? key, 
    required this.text,
    this.textColor,
    this.color, this.border, this.size, this.weight, 
  }) : super(key: key);
 
  final String text;
  final Color? textColor, color, border; 
  final double? size; 
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Container( 
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color ?? AppColors.primaryColorMain,
        border: Border.all(color: border ?? Colors.transparent, )
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: size ?? 12,
            fontWeight: weight ?? FontWeight.w600,
            color: textColor ?? AppColors.neutralWhite,
          ),
        ),
      ),
    );
  }
}
