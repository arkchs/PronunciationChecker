import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pronunciation/pages/practice_page/practice_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF181A2A),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Navigation Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.language,
                        color: Color(0xFF19A7F2),
                        size: 28,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'SpeakRight',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      _NavLink('Features'),
                      _NavLink('Pricing'),
                      _NavLink('Support'),
                      const SizedBox(width: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF19A7F2),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Get Started',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Banner Section
            Stack(
              children: [
                Container(
                  height: size.height * 0.6,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/banner_background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.6,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Master Any Language with\nPerfect Pronunciation',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 36,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(height: 18),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Text(
                          'SpeakRight helps you achieve fluency by providing personalized feedback on your pronunciation.\n Practice anytime, anywhere, and speak with confidence.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(255, 187, 210, 216),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF19A7F2),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PracticePage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Start Practicing Now',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Why Choose Section
            Container(
              color: const Color(0xFF23243A),
              width: double.infinity,
              height: size.height * 0.6,
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 0),
              child: Column(
                children: [
                  const Text(
                    'Why Choose SpeakRight?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      'Our innovative platform combines cutting-edge speech recognition technology with expert-designed exercises to deliver effective pronunciation training.',
                      style: TextStyle(color: Color(0xFFBFC2D5), fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _FeatureCard(
                        icon: Icons.mic,
                        title: 'Real-time Feedback',
                        description:
                            'Receive instant feedback on your pronunciation, highlighting areas for improvement and guiding you towards accuracy.',
                        middle: 0,
                      ),
                      const SizedBox(width: 24),
                      _FeatureCard(
                        icon: Icons.forum,
                        title: 'Immersive Exercises',
                        description:
                            'Engage in interactive exercises that simulate real-life conversations, helping you adapt to various speaking scenarios.',
                        middle: 1,
                      ),
                      const SizedBox(width: 24),
                      _FeatureCard(
                        icon: Icons.bar_chart,
                        title: 'Progress Tracking',
                        middle: 0,
                        description:
                            'Monitor your progress with detailed analytics, track your improvements over time, and stay motivated on your language journey.',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Footer
            Container(
              color: const Color(0xFF181A2A),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _FooterLink('Terms of Service'),
                      const SizedBox(width: 24),
                      _FooterLink('Privacy Policy'),
                      const SizedBox(width: 24),
                      _FooterLink('Contact Us'),
                    ],
                  ),
                  const Text(
                    '© 2024 LinguaSpeak. All rights reserved.',
                    style: TextStyle(color: Color(0xFFBFC2D5), fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavLink extends StatelessWidget {
  final String label;
  const _NavLink(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final int middle;
  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.middle,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.25,
      height: size.height * (0.3 + 0.05 * middle),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF181A2A),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF19A7F2), width: 1.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF19A7F2), size: 36),
          const SizedBox(height: 18),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            description,
            style: const TextStyle(color: Color(0xFFBFC2D5), fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String label;
  const _FooterLink(this.label);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(color: Color(0xFFBFC2D5), fontSize: 14),
    );
  }
}
