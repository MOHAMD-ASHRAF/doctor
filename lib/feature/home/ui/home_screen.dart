import 'package:doctor/feature/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctor/feature/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            HomeTopBar(),
              DoctorBLueContainer()
            ],
          ),
        ),
      ),
    );
  }
}