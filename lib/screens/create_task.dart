import 'package:flutter/material.dart';
import 'package:taskaty_app/widgets/custom_button.dart';
import 'package:taskaty_app/widgets/custom_colors_select.dart';
import 'package:taskaty_app/widgets/custom_text_form_field.dart';
import 'package:taskaty_app/widgets/custom_text_title_widget.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  final List<Color> defaultColors = const [
    Color(0xffFF4B4B),
    Color(0xffFF9F29),
    Color(0xffFFD93D),
    Color(0xff6BCB77),
    Color(0xff4D96FF),
    Color(0xff917FB3),
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
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          title: const Text(
            'New Task',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xffffffff),
          foregroundColor: const Color(0xff000000),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTextTitleWidget(title: 'Create Task', size: 28),
                const SizedBox(height: 20),
                const CustomTextTitleWidget(title: 'Task Title', size: 16),
                const CustomTextFormField(
                  maxLines: 1,
                  hintText: 'Enter task title',
                  label: 'Task Title',
                ),
                const SizedBox(height: 25),
                const CustomTextTitleWidget(
                  title: 'Task Description',
                  size: 16,
                ),

                const CustomTextFormField(
                  maxLines: 3,
                  hintText: 'Enter task description',
                  label: 'Task Description',
                ),
                const SizedBox(height: 20),
                const CustomTextTitleWidget(title: 'Date & Time', size: 16),
                const CustomTextFormField(
                  hintText: 'Enter Date & Time',
                  label: 'Date & Time',
                  icon: Icons.calendar_month,
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextTitleWidget(title: 'Start Time', size: 16),
                          CustomTextFormField(
                            hintText: 'Start Time',
                            label: 'Start Time',
                            icon: Icons.access_time,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 25),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextTitleWidget(title: 'End Time', size: 16),
                          CustomTextFormField(
                            hintText: 'End Time',
                            label: 'End Time',
                            icon: Icons.access_time,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomTextTitleWidget(title: 'Choose Color', size: 16),

                CustomColorsSelect(
                  colors: defaultColors,
                  selectedColor: selectedColor,
                  onColorSelected: (color) {
                    setState(() {
                      selectedColor = color;
                    });
                  },
                ),
                const SizedBox(height: 20),
                CustomButton(text: 'Create Task', onPressed: () {}),
              ],
            ),
          ),
        ), // SingleChildScrollView
      ), // Scaffold
    ); // GestureDetector
  }
}
