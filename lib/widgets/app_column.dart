import 'package:commerce/utils/colors.dart';
import 'package:commerce/utils/dimensions.dart';
import 'package:commerce/widgets/big_text.dart';
import 'package:commerce/widgets/icons_and_text_widget.dart';
import 'package:commerce/widgets/small_text.dart';
import 'package:flutter/material.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26, color: Colors.black),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(5, (index) {
                return Container(
                  margin: const EdgeInsets.only(right: 1),
                  child: Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: 15,
                  ),
                );
              }),
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(
              text: "4.5",
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "1287"),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                iconColor: AppColors.iconColor1,
                text: "Normal"),
            IconAndTextWidget(
                icon: Icons.location_on,
                iconColor: AppColors.mainColor,
                text: "1.7km"),
            IconAndTextWidget(
                icon: Icons.access_time_filled_rounded,
                iconColor: AppColors.iconColor2,
                text: "32min"),
          ],
        ),
      ],
    );
  }
}
