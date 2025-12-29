import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/custom_button.dart';
import 'package:taskaty_app/widgets/custom_colors_select.dart';
import 'package:taskaty_app/widgets/custom_textformfild_widget.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  final List<Color> defaultColors = const [
    Color(0xFFFF4B4B),
    Color(0xFFFF9F29),
    Color(0xFFFFD93D),
    Color(0xFF6BCB77),
    Color(0xFF4D96FF),
    Color(0xFF917FB3),
  ];
  late Color selectedColor;

  @override
  void initState() {
    super.initState();
    selectedColor = defaultColors[0];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Create Task')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create Task',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 25),
              const CustomTextformfildWidget(
                maxLines: 1,
                hintText: 'Enter task title',
                label: 'Task Title',
              ),
              const SizedBox(height: 25),

              const CustomTextformfildWidget(
                maxLines: 3,
                hintText: 'Enter task description',
                label: 'Task Description',
              ),
              const SizedBox(height: 25),
              const CustomTextformfildWidget(
                hintText: 'Enter Date & Time',
                label: 'Date & Time',
                icon: Icons.calendar_month,
              ),
              const SizedBox(height: 25),
              const Row(
                children: [
                  Expanded(
                    child: CustomTextformfildWidget(
                      hintText: 'Start Time',
                      label: 'Start Time',
                      icon: Icons.access_time,
                    ),
                  ),
                  SizedBox(width: 25),
                  Expanded(
                    child: CustomTextformfildWidget(
                      hintText: 'End Time',
                      label: 'End Time',
                      icon: Icons.access_time,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              CustomColorsSelect(
                colors: defaultColors,
                selectedColor: selectedColor,
                onColorSelected: (color) {
                  setState(() {
                    selectedColor = color;
                  });
                },
              ),
              const SizedBox(height: 50),
              CustomButton(text: 'Create Task', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
