// import 'package:flutter/material.dart';
// import 'package:to_el_todo_app/view/components/all_declarations.dart';
// import 'package:to_el_todo_app/view/components/app_text_field.dart';

// Future<AlertDialog?> displayDialog(
//   BuildContext context,
//   Function(Map<String, dynamic>) onPressed,
//   Function() onCancel,
//   TextEditingController titleController,
//   TextEditingController descriptionController,
//   GlobalKey formKey,
// ) async {
//   final Map<String, dynamic> todo = {};
//   @override
//   void dispose() {
//     titleController.dispose();
//     descriptionController.dispose();
//   }

//   return await showDialog(
//     context: context,
//     builder: (context) => AlertDialog(
//       scrollable: true,
//       title: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: const [
//           Text(
//             "What do you have to do today?",
//             style: TextStyle(fontSize: 20.0, color: Colors.black54),
//           ),
//           Text(
//             "Add your task",
//             style: TextStyle(fontSize: 20.0, color: Colors.black54),
//           ),
//         ],
//       ),
//       content: StatefulBuilder(builder: (context, StateSetter setState) {
//         return Form(
//           key: formKey,
//           child: Column(
//             children: [
//               AppTextField(
//                 validator: (value) => Methods.checkTitle(value),
//                 maxLines: 2,
//                 hintText: "Enter Task Title",
//                 controller: titleController,
//               ),
//               const SizedBox(
//                 height: 15.0,
//               ),
//               AppTextField(
//                 validator: (value) => Methods.checkDescription(value),
//                 maxLines: 5,
//                 hintText: "Enter Task Description",
//                 controller: descriptionController,
//               ),
//               const SizedBox(
//                 height: 15.0,
//               ),
//               Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(12.0),
//                   child: GestureDetector(
//                     onTap: () async {
//                       TimeOfDay selectedTime = TimeOfDay.now();
//                       final TimeOfDay? timeOfDay = await showTimePicker(
//                           context: context,
//                           initialTime: TimeOfDay.now(),
//                           initialEntryMode: TimePickerEntryMode.dial,
//                           useRootNavigator: false);
//                       if (timeOfDay != null && timeOfDay != selectedTime) {
//                         setState(() {
//                           selectedTime = timeOfDay;
//                         });
//                       }
//                     },
//                     child: const Text("Select Time"),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       }),
//       actions: [
//         TextButton(
//           onPressed: () {
//             todo["title"] = titleController.text;
//             todo["description"] = descriptionController.text;
//             // todo["task_time"] = timeOfDay.toString();
//             onPressed(todo);
//             // todo[""];
//           },
//           child: const Text(        
//             'ADD',
//             style: TextStyle(color: Colors.black54),
//           ),
//         ),
//         TextButton(
//           onPressed: onCancel,
//           child: const Text(
//             'CANCEL',
//             style: TextStyle(color: Colors.red),
//           ),
//         )
//       ],
//     ),
//   );
// }
