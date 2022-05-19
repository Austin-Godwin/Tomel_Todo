// import 'package:flutter/material.dart';

// class SelectTime extends StatefulWidget {
//   TimeOfDay selectedTime;
//   SelectTime({Key? key, required this.selectedTime}) : super(key: key);

//   @override
//   _SelectTimeState createState() => _SelectTimeState();
// }

// class _SelectTimeState extends State<SelectTime> {
//   // TimeOfDay selectedTime = TimeOfDay.now();
//   @override
//   void initState() {
//     Future.delayed(const Duration(milliseconds: 100), () {
//       _selectTime(context);
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         ElevatedButton(
//           onPressed: () {
//             _selectTime(context);
//           },
//           child: const Text("Select Time"),
//         ),
//         Text("${widget.selectedTime.hour}:${widget.selectedTime.minute}"),
//       ],
//     ));
//   }

//   _selectTime(BuildContext context) async {
//     final TimeOfDay? timeOfDay = await showTimePicker(
//         context: context,
//         initialTime: widget.selectedTime,
//         initialEntryMode: TimePickerEntryMode.input,
//         useRootNavigator: false);
//     if (timeOfDay != null && timeOfDay != widget.selectedTime) {
//       setState(() {
//         widget.selectedTime = timeOfDay;
//         // Navigator.pop(context);
//       });
//     }
//   }
// }
