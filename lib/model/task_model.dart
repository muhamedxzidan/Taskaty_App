import 'package:flutter/material.dart';

class TaskModel {
  final String title;
  final String description;
  final String date;
  final String time;
  final Color color;

  TaskModel({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.color,
  });
}

List<TaskModel> tasksList = [];
