import 'package:flutter/material.dart';
import 'package:single_page_portfolio/pages/homepage.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatefulWidget {
  const MyPortfolio({super.key});

  @override
  State<MyPortfolio> createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: 'PORTFOLIO',
      home: HomePage(toggleTheme: toggleTheme),
    );
  }
}
