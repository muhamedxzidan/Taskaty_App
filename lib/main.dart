import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskaty_app/model/task_model.dart';
import 'package:taskaty_app/model/user_model.dart';
import 'package:taskaty_app/taskaty_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<UserModel>('user');
  await Hive.openBox<TaskModel>('tasks');

  runApp(const TaskatyApp());
}
