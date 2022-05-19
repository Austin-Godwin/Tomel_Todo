import 'package:flutter/material.dart';
import 'package:to_el_todo_app/view/components/app_text_bold.dart';

class EmptyTodoView extends StatelessWidget {
  const EmptyTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: AppTextBold(
                  text: "Welcome",
                  fontSize: 50.0,
                ),
              ),
              const AppTextBold(
                text: "What do you want to do today?",
                fontSize: 22.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: "Click on the ",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "'+' ",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    TextSpan(
                        text: "icon below to add your \n task for the day.")
                  ],
                ),
              ),
              const SizedBox(
                height: 120.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
