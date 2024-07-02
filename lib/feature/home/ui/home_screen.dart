import 'package:doctor/core/helpers/spacing.dart';
import 'package:doctor/feature/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctor/feature/home/ui/widgets/doctor_specialitySeeAll.dart';
import 'package:doctor/feature/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:doctor/feature/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const HomeTopBar(),
              const DoctorBLueContainer(),
              verticalSpace(16.h),
              DoctorsSpecialitySeeAll(),
               DoctorsSpecialityListView(),
              verticalSpace(8.h),


            ],
          ),
        ),
      ),
    );
  }
}
