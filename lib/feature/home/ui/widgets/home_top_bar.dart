import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('hello hego',
              style: TextStyles.font18DarkBlueSBold,
            ),
            Text('hello hego how are you',
              style: TextStyles.font12GrayRegular,
            ),
          ],
        ),
        const Spacer(),
         CircleAvatar(
          radius: 24,
          backgroundColor: ColorsManager.moreLightGray,
          child: SvgPicture.asset('assets/svgs/notifications.svg'),
        )
      ],
    );
  }
}
