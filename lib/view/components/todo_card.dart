import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_el_todo_app/view/components/all_declarations.dart';

class TodoCard extends StatefulWidget {
  final String taskTitle;
  final String taskDescription;
  final String taskTime;
  bool? value;
  final Function()? onChanged;

  TodoCard({
    Key? key,
    required this.taskTitle,
    required this.taskDescription,
    required this.taskTime,
    this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  State<TodoCard> createState() => _TodoCardState();
}

class _TodoCardState extends State<TodoCard> {
  // bool value = false;
  Timer? checkTimer;
  final String time = DateFormat("hh:mm a").format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(time),
                const Spacer(),
                Checkbox(
                  activeColor: Colors.red,
                  //  Colors.black54,
                  value: widget.value,
                  // widget.value,
                  onChanged:
                      // widget.onChanged,
                      (value) {
                    setState(() {
                      widget.value = value!;
                    });
                    if (widget.value!) {
                      checkTimer = Timer(const Duration(seconds: 3), () {
                        widget.onChanged!();
                      });
                    } else {
                      if (checkTimer != null) {
                        checkTimer!.cancel();
                      }
                    }
                  },
                )
              ],
            ),
            Text(
              widget.taskTitle,
              style: !widget.value!
                  ? const TextStyle(
                      fontSize: 20.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    )
                  : Methods.checkedTextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
              textAlign: TextAlign.center,
            ),
            // AppTextBold(
            //   text: widget.taskTitle,
            //   fontSize: 20.0,
            // ),
            const SizedBox(height: 5.0),
            Text(
              widget.taskDescription,
              style: !widget.value!
                  ? const TextStyle(
                      color: Colors.black54,
                      fontSize: 17.0,
                    )
                  : Methods.checkedTextStyle(
                      fontSize: 17.0,
                    ),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Task Time: ${widget.taskTime}",
                  style: !widget.value!
                      ? const TextStyle(
                          color: Colors.black54,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold)
                      : Methods.checkedTextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
