import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 1)
class TaskModel extends HiveObject {
  // extand beco save in hive
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String description;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final String time;
  @HiveField(4)
  final int colorValue;

  TaskModel({
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required Color color,
  }) : colorValue = color.toARGB32();

  Color get color => Color(colorValue);
}
