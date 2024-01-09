import 'package:flutter/material.dart';
import 'package:student_management_hive_api/features/batch/presentation/view/add_batch_view.dart';
import 'package:student_management_hive_api/features/course/presentation/view/add_course_view.dart';
import 'package:student_management_hive_api/features/home/presentation/view/bottom_view/dashboard_view.dart';
import 'package:student_management_hive_api/features/home/presentation/view/bottom_view/profile_view.dart';

class HomeState {
  final List<Widget> lstWidgets;
  final int index;

  HomeState({
    required this.lstWidgets,
    required this.index,
  });

  factory HomeState.initial() {
    return HomeState(
      lstWidgets: [
        const DashboardView(),
        const AddCourseView(),
        const AddBatchView(),
        const ProfileView()
      ],
      index: 0,
    );
  }

  HomeState copyWith({
    List<Widget>? lstWidgets,
    int? index,
  }) {
    return HomeState(
      lstWidgets: lstWidgets ?? this.lstWidgets,
      index: index ?? this.index,
    );
  }

  @override
  String toString() => 'HomeState(lstWidgets: $lstWidgets, index: $index)';
}