import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomizedAppBar extends StatelessWidget {
  const CustomizedAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String date = DateFormat("EEE, MMMM d").format(DateTime.now());
    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 58, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "To-El Todo App",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 18.0,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                const Icon(
                  CupertinoIcons.calendar_today,
                  color: Colors.black54,
                ),
                const SizedBox(width: 10.0),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  alignment: Alignment.centerRight,
                  iconSize: 30.0,
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                  color: Colors.black54,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
