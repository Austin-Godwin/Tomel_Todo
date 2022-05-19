import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'all_declarations.dart';
import 'app_text_field.dart';
// import 'display_dialog.dart';

class SquaredFloatingActionButton extends StatefulWidget {
  final Function(Map<String, dynamic> todo)? onPressed;
  // final Function()? onCancel;
  // final TextEditingController titleController;
  // final TextEditingController descriptionController;
  // final GlobalKey formKey;
  const SquaredFloatingActionButton({
    Key? key,
    this.onPressed,
    // this.onCancel,
    // required this.titleController,
    // required this.descriptionController,
    // required this.formKey,
  }) : super(key: key);

  @override
  State<SquaredFloatingActionButton> createState() =>
      _SquaredFloatingActionButtonState();
}

class _SquaredFloatingActionButtonState
    extends State<SquaredFloatingActionButton> {
  TimeOfDay? timeOfDay;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  pickTime() async {
    TimeOfDay selectedTime = TimeOfDay.now();
    timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        initialEntryMode: TimePickerEntryMode.dial,
        useRootNavigator: false);
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay!;
      });
    }
  }

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> todo = {};
    return InkWell(
      onTap: () {
        print("I'm in");
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            scrollable: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "What do you have to do today?",
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
                Text(
                  "Add your task",
                  style: TextStyle(fontSize: 20.0, color: Colors.black54),
                ),
              ],
            ),
            content: StatefulBuilder(builder: (context, StateSetter setState) {
              return Form(
                key: _formKey,
                // widget.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppTextField(
                      validator: (value) => Methods.checkTitle(value),
                      maxLines: 2,
                      hintText: "Enter Task Title",
                      controller: titleController,
                      // widget.titleController,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    AppTextField(
                      validator: (value) => Methods.checkDescription(value),
                      maxLines: 5,
                      hintText: "Enter Task Description",
                      controller: descriptionController,
                      // widget.descriptionController,
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    // const Text("Select Time"),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                          onTap: () {
                            pickTime();
                          },
                          child: Text(timeOfDay == null
                              ? "Select Time"
                              : timeOfDay!.format(context)),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
            actions: [
              TextButton(
                onPressed: () {
                  todo["title"] = titleController.text;
                  // widget.titleController.text;
                  todo["description"] = descriptionController.text;
                  // widget.descriptionController.text;
                  todo["task_time"] = timeOfDay!.format(context);
                  if (_formKey.currentState!.validate()) {
                    widget.onPressed!(todo);
                    titleController.clear();
                    descriptionController.clear();
                    Navigator.pop(context);
                  }
                  // todo[""];
                },
                child: const Text(
                  'ADD',
                  style: TextStyle(color: Colors.black54),
                ),
              ),
              TextButton(
                onPressed: () {
                  titleController.clear();
                  descriptionController.clear();
                  Navigator.of(context).pop();
                },
                // widget.onCancel,
                child: const Text(
                  'CANCEL',
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        );
        // displayDialog(
        //   context,
        //   onPressed!,
        //   onCancel!,
        //   titleController,
        //   descriptionController,
        //   formKey
        // );
      },
      child: Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(2, 3),
              )
            ]),
        clipBehavior: Clip.antiAlias,
        child: const Icon(
          CupertinoIcons.add,
          size: 40.0,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
