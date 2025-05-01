import 'dart:async';

import 'package:get/get.dart';

class DartController extends GetxController {
  final RxList<String> visibleWords = <String>[].obs;

  void showAnswerWordByWord(String fullAnswer) {
    visibleWords.clear();
    final words = fullAnswer.trim().split(' ');

    int index = 0;
    Timer.periodic(const Duration(milliseconds: 150), (timer) {
      if (index >= words.length) {
        timer.cancel();
      } else {
        visibleWords.add(words[index]);
        index++;
      }
    });
  }

  String get fullVisibleText => visibleWords.join(' ');
  final List<Map<String, String>> qnaList = [
    {
      'question': 'What is Dart?',
      'answer':
          'Dart is a programming language used to build mobile, desktop, and server apps. '
              'It is the language behind Flutter.',
    },
    {
      'question':
          'What is the primary difference between const and final in Dart?',
      'answer': '''

      * const হলো compile-time constant।
      * final হলো runtime constant।
      * const এবং final উভয়ই immutable ভেরিয়েবল তৈরি করতে ব্যবহৃত হয়।
      * final একবারই নির্ধারিত হয় এবং পরিবর্তন করা যায় না। তবে এটি রানটাইমে নির্ধারিত হয়।
      * const ও নির্ধারিত হওয়ার পর পরিবর্তন করা যায় না, তবে এটি কম্পাইল টাইমে নির্ধারিত হয়।
      * final ভ্যারিয়েবল লেট ইনিশিয়ালাইজেশন সাপোর্ট করে, মানে আমরা পরে সেট করতে পারি।
      * যদি কোনো ভ্যারিয়েবলের মান রানটাইমে নির্ধারিত হয়, তাহলে final ব্যবহার করবো,
      আর যদি ভ্যারিয়েবলের মান কম্পাইল টাইমে নির্ধারিত হয়, তাহলে const ব্যবহার করবো।
        ''',
    },
  ];
}
