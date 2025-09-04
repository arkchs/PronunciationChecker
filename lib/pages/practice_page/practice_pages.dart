import 'package:flutter/material.dart';
import 'package:pronunciation/pages/practice_page/horizontal_line.dart';
import 'package:pronunciation/pages/practice_page/mic_button.dart';
import 'package:pronunciation/pages/practice_page/nav_bar.dart';

class PracticePage extends StatelessWidget {
  PracticePage({super.key});
  String text = "";
  void getText() {
    text = "Hello, How are you. I am fine?";
  }

  @override
  Widget build(BuildContext context) {
    getText();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: double.infinity, // Take full height
          //   width: double.infinity, // Take full width
          //   child: Image.asset(
          //     'images/background.png', // Replace with your image path
          //     fit: BoxFit.cover, // Cover the entire area
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 16),
              NavBar(),
              HorizontalLine(),
              Expanded(
                child: Center(
                  child: Container(
                    width: size.width * 0.6,
                    height: size.height * 0.75,
                    padding: const EdgeInsets.symmetric(
                      vertical: 48,
                      horizontal: 32,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(200, 35, 36, 58),
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 32,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Practice your pronunciation',
                          style: Theme.of(context).textTheme.headlineLarge,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Enter a word or phrase below to get started.',
                          style: Theme.of(context).textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        Container(
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFBFC2D5),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            text,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 32),
                        MicButton(),
                        const SizedBox(height: 32),
                        Container(
                          width: size.width * 0.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(24),
                          child: const Text(
                            'Your feedback will appear here...',
                            style: TextStyle(
                              color: Color.fromARGB(200, 7, 2, 19),
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: const Text(
                  'Powered by SpeakRight',
                  style: TextStyle(color: Color(0xFFBFC2D5), fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
