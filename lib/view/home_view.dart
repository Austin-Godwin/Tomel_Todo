import 'package:flutter/material.dart';
import 'package:to_el_todo_app/view/components/customized_app_bar.dart';
import 'package:to_el_todo_app/view/components/empty_todo_view.dart';
import 'package:to_el_todo_app/view/components/squared_floating_action_button.dart';
import 'components/todo_card.dart';

class HomeView extends StatefulWidget {
  // final TimeOfDay? taskTime;
  const HomeView({
    Key? key,
    // this.taskTime
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // final _formKey = GlobalKey<FormState>();
  // TimeOfDay selectedTime = TimeOfDay.now();
  bool value = false;
  // final TextEditingController titleController = TextEditingController();
  // final TextEditingController descriptionController = TextEditingController();
  List<Map<String, dynamic>> todoList = [];
  // List<TodoCard> todo = [];

  addTodo(Map<String, dynamic> todo) {
    setState(() {
      todoList.add(todo);
    });
  }

  // addTodo(
  //   String titleText,
  //   String descriptionText,
  //   String time,
  // ) {
  //   print("inside addTodo");

  //   // bool isValue = false;
  //   final getTexts = TodoCard(
  //     taskTitle: titleText,
  //     taskDescription: descriptionText,
  //     taskTime: time,
  //   // final getTexts = TodoCard(
  //   //   taskTitle: titleText,
  //   //   taskDescription: descriptionText,
  //   //   taskTime: time,
  //     // value: isValue,
  //     // onChanged: (value) {
  //     //   setState(() {
  //     //     isValue = value!;
  //     //   });
  //     // },
  //   );
  //   print("==================================");
  //   print(
  //       "${getTexts.taskTitle}, ${getTexts.taskDescription}, ${getTexts.taskTime}");
  //   print("==================================");
  //   setState(() {
  //     todo.add(getTexts);
  //   });
  // }

  removeTodo(int index) {
    setState(() {
      todoList.removeAt(index);
    });
    // if (todo.isNotEmpty) {
    //   final toRemove = todo.map(
    //     (e) => e,
    //   );
    //   remove
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomizedAppBar(),
          Expanded(
              child: ListView.builder(
            padding: todoList.isEmpty
                ? EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height / 3.5)
                : const EdgeInsets.symmetric(horizontal: 5.0),
            itemCount: todoList.isEmpty ? 1 : todoList.length,
            itemBuilder: ((context, index) => todoList.isEmpty
                ? const Center(child: EmptyTodoView())
                : TodoCard(
                    taskTitle: todoList[index]["title"],
                    taskDescription: todoList[index]["description"],
                    taskTime: todoList[index]["task_time"],
                    value: value,
                    onChanged: () {
                      print("I'm in");
                      removeTodo(index);
                      // Future.delayed(const Duration(seconds: 1),
                      //     (() => removeTodo(index)));
                    })),
          ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SquaredFloatingActionButton(
        // titleController: titleController,
        // descriptionController: descriptionController,
        // formKey: _formKey,
        onPressed: (todo) async {
          addTodo(todo);
          // if (_formKey.currentState!.validate()) {
          // addTodo(todo);
          // addTodo(titleController.text, descriptionController.text,
          //     selectedTime.format(context));
          // titleController.clear();
          // descriptionController.clear();
          // Navigator.pop(context);
          // }
        },
        // onCancel: () {
        //   titleController.clear();
        //   descriptionController.clear();
        //   Navigator.of(context).pop();
        // },
      ),
    );
  }
}
