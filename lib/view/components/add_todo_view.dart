// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// // import 'package:to_el_todo_app/view/components/all_declarations.dart';
// import 'package:to_el_todo_app/view/components/empty_todo_view.dart';
// import 'package:to_el_todo_app/view/components/todo_card.dart';

// class AddTodoView extends StatefulWidget {
//   final String? titleText;
//   final String? descriptionText;
//   const AddTodoView({Key? key, this.titleText, this.descriptionText})
//       : super(key: key);

//   @override
//   State<AddTodoView> createState() => _AddTodoViewState();
// }

// class _AddTodoViewState extends State<AddTodoView> {
//   List<TodoCard> todo = [];
//   bool value = false;
//   final String time = DateFormat("hh:mm a").format(DateTime.now());

//   addTodo() {
//     final getTexts = TodoCard(
//       taskTitle: widget.titleText ?? "No Title",
//       taskDescription: widget.descriptionText ?? "No description",
//       checkBoxValue: value,
//       currentTime: time,
//     );
//     setState(() {
//       todo.add(getTexts);
//     });
//   }

//   @override
//   void initState() {
//     // addTodo();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       padding: todo.isEmpty
//           ? EdgeInsets.symmetric(
//               vertical: MediaQuery.of(context).size.height / 3.5)
//           : const EdgeInsets.symmetric(horizontal: 5.0),
//       itemCount: todo.isEmpty ? 1 : todo.length,
//       itemBuilder: ((context, index) =>
//           // TodoCard(
//           //     taskTitle: todo[index].taskTitle,
//           //     taskDescription: todo[index].taskDescription)),
//           todo.isEmpty
//               ? const Center(child: EmptyTodoView())
//               : TodoCard(
//                   taskTitle: todo[index].taskTitle,
//                   taskDescription: todo[index].taskDescription)),
//     );
//     // ListView(
//     //   padding: const EdgeInsets.only(
//     //     left: 5.0,
//     //     right: 5.0,
//     //   ),
//     //   children: [
//     //     TodoCard(
//     //       currentTime: "3:31 pm",
//     //       checkBoxValue: value,
//     //       onChanged: (value) {
//     //         this.value = value!;
//     //       },
//     //       taskTitle: AllDeclarations.title,
//     //       taskDescription:
//     //           "Task Description\nHere you would put in the details of you task, just put it anyhow you want it.",
//     //       taskTime: "12:23 am",
//     //     ),
//     //   ],
//     // );
//   }
// }
