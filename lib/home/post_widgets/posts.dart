import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/theme/colors.dart';
import '../../shared/widgets/widgets.dart';

class Posts extends StatelessWidget {
  const Posts({
    Key? key,
    required this.name,
    required this.location,
    required this.profilePicture,
    required this.testimony,
    this.postPicture, this.onTap,
  }) : super(key: key);
  final String name;
  final String location;
  final Widget profilePicture;
  final Widget testimony;
  final Widget? postPicture;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(16).copyWith(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.neutralWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.neutralBlack.withOpacity(0.1),
            blurRadius: 15.0,
            offset: const Offset(0.0, 4.0),
          )
        ],
      ),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: CircleAvatar(radius: 24, child: profilePicture),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name, //'Adebimpe Showbowale',
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      location,
                      style: const TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  context: context,
                  builder: (context) => buildSheet(context),
                );
              },
              icon: const FaIcon(FontAwesomeIcons.ellipsis),
            )
          ]),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: onTap,
            child: Column(
              children: [
                testimony,
                SizedBox(child: postPicture),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              color: AppColors.navColor,
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 0)
                .copyWith(bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.heart,
                      size: 20,
                      color: AppColors.secondaryColorNeutral,
                    ),
                    SizedBox(width: 6),
                    Text(
                      '5k',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.secondaryColorNeutral,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.message,
                      size: 20,
                      color: AppColors.secondaryColorNeutral,
                    ),
                    SizedBox(width: 6),
                    Text(
                      '578',
                      style: TextStyle(
                        fontSize: 10,
                        color: AppColors.secondaryColorNeutral,
                      ),
                    )
                  ],
                ),
                const FaIcon(
                  FontAwesomeIcons.shareFromSquare,
                  size: 20,
                  color: AppColors.secondaryColorNeutral,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
