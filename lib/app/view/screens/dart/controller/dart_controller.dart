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
    {
      'question': 'কখন const এর পরিবর্তে final ব্যবহার করা উচিত ?',
      'answer': 'final ব্যবহার করতে হবে, যদি ভ্যালুটি রানটাইমে সেট হয়।',
    },
    {
      'question': 'ডার্টে Compile Time এবং Run Time-এর মধ্যে কী পার্থক্য?',
      'answer': '''
      'Compile Time:
      * Compile Time হলো সেই সময় যখন কোড কম্পাইলার দ্বারা চেক এবং অনুবাদ করা হয় মেশিন কোডে।
      * সিনট্যাক্স চেক: কোডে কোনো ভুল আছে কিনা তা চেক করা হয়।
      * টাইপ চেকিং: ভুল টাইপ ব্যবহার করা হলে এরর দেখায়।

       Run Time:
      * Run Time হলো সেই সময় যখন প্রোগ্রাম রান হয় (execute হয়) এবং ইউজারের ইনপুট অনুযায়ী কাজ করে।
      * অ্যাকচুয়াল এক্সিকিউশন: কোড রান হয় এবং আউটপুট দেয়।
      * ডাইনামিক ভ্যালু প্রসেসিং: ইউজারের ইনপুট বা API থেকে আসা ডাটা প্রসেস করা হয়।
      * ভালো প্র্যাকটিস: Compile Time-এ যত বেশি এরর ধরা যাবে, তত ভালো। এজন্য const, final, এবং type safety মেনে কোড লিখতে হবে।',
   '''
    },
    {
      'question': 'কখন const এর পরিবর্তে final ব্যবহার করা উচিত ?',
      'answer': 'final ব্যবহার করতে হবে, যদি ভ্যালুটি রানটাইমে সেট হয়।',
    },
    {
      'question': 'What is Type Safety ?',
      'answer': '''
      * আমরা যেই ভ্যারিয়েবল লিখি, সেটা কোন ধরনের ডেটা (data type) রাখবে, সেটা আগেই বলে দেওয়া হয়।

      *  ভুল টাইপের ভ্যালু দিলে তা compile time-এই ধরতে পারে।

      * রানটাইম error কম হয়, কারণ ডেটা টাইপ mismatch আগেই detect হয়ে যায়।',
    '''},
    {
      'question': 'Type Inference (টাইপ ইনফারেন্স) মানে কী?',
      'answer': 'Type Inference হলো Dart-এর সেই ক্ষমতা, যেখানে তুমি টাইপ না লিখলেও সে বুঝে নেয় কী টাইপ হওয়া উচিত।',
    },
    {
      'question': 'Dart কী Strongly Typed ভাষা? এর সুবিধা কী?',
      'answer': '''Dart একটি Strongly Typed ভাষা।
    প্রত্যেক ভ্যারিয়েবলের সঙ্গে একটি নির্দিষ্ট টাইপ যুক্ত থাকে, এবং সেই টাইপ ছাড়া অন্য কোনো টাইপের ভ্যালু সেট করলে Error দেয়।',
    '''},
    {
      'question': 'Why Use Dart?',
      'answer': '''Fast Execution → JIT for development, AOT for production.
    Cross-Platform Support → Write once, run anywhere.
    Great for UI Development → Optimized for Flutter.
    Strong Community & Google Support → Backed by Google.',
    '''}, {
      'question': 'Enum-এর মান পরিবর্তন বা যুক্ত করা সম্ভব কি? কেন? ',
      'answer': 'না, ডার্টে Enum-এর মান একবার ঘোষণা করার পরে পরিবর্তন বা নতুন মান যোগ করা সম্ভব নয়। এটি অপরিবর্তনীয় (immutable)।',
    }, {
      'question': 'Type Inference (টাইপ ইনফারেন্স) মানে কী?',
      'answer': 'Type Inference হলো Dart-এর সেই ক্ষমতা, যেখানে তুমি টাইপ না লিখলেও সে বুঝে নেয় কী টাইপ হওয়া উচিত।',
    }, {
      'question': 'Type Inference (টাইপ ইনফারেন্স) মানে কী?',
      'answer': 'Type Inference হলো Dart-এর সেই ক্ষমতা, যেখানে তুমি টাইপ না লিখলেও সে বুঝে নেয় কী টাইপ হওয়া উচিত।',
    }, {
      'question': 'Type Inference (টাইপ ইনফারেন্স) মানে কী?',
      'answer': 'Type Inference হলো Dart-এর সেই ক্ষমতা, যেখানে তুমি টাইপ না লিখলেও সে বুঝে নেয় কী টাইপ হওয়া উচিত।',
    },
  ];
}
