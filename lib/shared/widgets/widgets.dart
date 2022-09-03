import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../theme/colors.dart';

InputDecoration textFieldDecoration(String hintText) {
  return InputDecoration(
    filled: true,
    fillColor: AppColors.neutralWhite,
    prefixIcon: const Icon(Icons.search_rounded),
    prefixIconColor: AppColors.navColor,
    hintText: hintText,
    // hintStyle: mediumText(color: AppColors.lightTextColor),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        borderSide: BorderSide.none),
  );
}

Widget searchBar({Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: 40,
      width: 293,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      // margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: AppColors.neutralWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: AppColors.navColor,
            size: 12.67,
          ),
          SizedBox(width: 12),
          Text(
            'Albert Flores',
            style: TextStyle(
              fontSize: 10,
              color: AppColors.navColor,
            ),
          )
        ],
      ),
    ),
  );
}

Widget buildSheet(BuildContext context) {
  return makeDismissible(
    context: context,
    child: DraggableScrollableSheet(
      initialChildSize: 0.56,
      builder: (context, scrollController) => Container(
        padding: const EdgeInsets.only(
          top: 40,
          left: 44,
        ),
        decoration: const BoxDecoration(
            color: AppColors.secondaryColorMain,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            )),
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            bottomItems(
              icon: FontAwesomeIcons.download,
              text: 'Add to favourite',
              onTap: () {},
            ),
            bottomItems(
              icon: FontAwesomeIcons.triangleExclamation,
              text: 'Report post',
              onTap: () {},
            ),
            bottomItems(
              icon: FontAwesomeIcons.circleXmark,
              text: 'Block Adebimpe Shobowale',
              onTap: () {},
            ),
            bottomItems(
              icon: FontAwesomeIcons.solidEyeSlash,
              size: 14,
              text: 'Hide Adebimpe Showbowale\'s Post',
              onTap: () {},
            ),
          ],
        ),
      ),
    ),
  );
}

Widget bottomItems({
  required IconData icon,
  required String text,
  Function()? onTap,
  double? size,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 32.0),
    child: GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          FaIcon(icon, size: 24),
          SizedBox(width: size ?? 19),
          Text(
            text,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget makeDismissible({required BuildContext context, required Widget child}) {
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () => Navigator.of(context).pop(),
    child: GestureDetector(child: child),
  );
}

Widget connectionRequest(BuildContext context) {
  return makeDismissible(
    context: context,
    child: DraggableScrollableSheet(
      initialChildSize: 0.35,
      builder: (context, scrollController) => Container(
        padding: const EdgeInsets.only(
          top: 40,
          left: 44,
        ),
        decoration: const BoxDecoration(
          color: AppColors.secondaryColorMain,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
        ),
        child: Column(
          // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            bottomItems(
              icon: FontAwesomeIcons.circleCheck,
              text: 'Accept Connection',
              onTap: () {},
            ),
            bottomItems(
              icon: FontAwesomeIcons.circleXmark,
              text: 'Reject Connection',
              onTap: () {},
            ),
          ],
        ),
      ),
    ),
  );
}
