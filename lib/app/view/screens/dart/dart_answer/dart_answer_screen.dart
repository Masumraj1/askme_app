import 'package:askme/app/view/screens/dart/controller/dart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DartAnswerScreen extends StatelessWidget {
  final String question;
  final String answer;

  DartAnswerScreen({super.key, required this.question, required this.answer});

  final DartController controller = Get.put(DartController());

  @override
  Widget build(BuildContext context) {
    controller.showAnswerWordByWord(answer);

    return Scaffold(
      appBar: AppBar(title: const Text("Answer")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Obx(() => Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal.shade50,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                controller.fullVisibleText,
                style: const TextStyle(fontSize: 18),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
