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

  var formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController startTimeController = TextEditingController();
  final TextEditingController endTimeController = TextEditingController();

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
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomTextTitleWidget(title: 'Create Task', size: 28),
                  const SizedBox(height: 20),
                  const CustomTextTitleWidget(title: 'Task Title', size: 16),
                  CustomTextFormField(
                    controller: titleController,
                    maxLines: 1,
                    hintText: 'Enter task title',
                    label: 'Task Title',
                  ),
                  const SizedBox(height: 25),
                  const CustomTextTitleWidget(
                    title: 'Task Description',
                    size: 16,
                  ),

                  CustomTextFormField(
                    controller: descriptionController,
                    maxLines: 3,
                    hintText: 'Enter task description',
                    label: 'Task Description',
                  ),
                  const SizedBox(height: 20),
                  const CustomTextTitleWidget(title: 'Date ', size: 16),
                  CustomTextFormField(
                    controller: dateController,
                    hintText: 'Enter Date ',
                    label: 'Date ',
                    icon: Icons.calendar_month,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomTextTitleWidget(
                              title: 'Start Time',
                              size: 16,
                            ),

                            CustomTextFormField(
                              controller: startTimeController,
                              readOnly: false,
                              onTap: () {
                                showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );
                              },
                              hintText: 'Start Time',
                              label: 'Start Time',
                              icon: Icons.access_time,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 25),

                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomTextTitleWidget(
                              title: 'End Time',
                              size: 16,
                            ),
                            CustomTextFormField(
                              controller: endTimeController,
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
                  CustomButton(
                    width: double.infinity,
                    text: 'Create Task',
                    onPressed: () {
                      formKey.currentState?.validate();
                    },
                  ),
                ],
              ),
            ),
          ),
        ), // SingleChildScrollView
      ), // Scaffold
    ); // GestureDetector
  }
}
