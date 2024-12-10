import 'package:betcontrol/pages/home/home_page.dart';
import 'package:betcontrol/pages/onboarding/widgets/onboarding_body.dart';
import 'package:betcontrol/pages/onboarding/widgets/onboarding_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "title": "Welcome TO BetControl",
      "description":
          "Take your first step towards responsible gaming with BetControl, and discover a healthier gaming experience",
      "image": "assets/images/onboarding/onboarding1.svg",
    },
    {
      "title": "Betting Addiction",
      "description":
          "Don't let betting control your life. Take charge, manage your habits, and stay in full control.",
      "image": "assets/images/onboarding/onboarding2.svg",
    },
    {
      "title": "Take Control",
      "description":
          "BetControl helps you take charge of your habits and stay in control. Start your journey today!",
      "image": "assets/images/onboarding/onboarding3.svg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingData.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingBody(
                    title: onboardingData[index]["title"]!,
                    description: onboardingData[index]["description"]!,
                    image: onboardingData[index]["image"]!,
                  );
                },
              ),
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onboardingData.length,
                  (index) => buildDot(index),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OnboardingButton(
                onPressed: () {
                  if (_currentPage == onboardingData.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  } else {
                    _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  }
                },
                buttonText: _currentPage == onboardingData.length - 1
                    ? "Get Started"
                    : "Next",
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: _currentPage == index
            ? const Color(0xff1A3B5D)
            : const Color(0xff628FBE).withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
