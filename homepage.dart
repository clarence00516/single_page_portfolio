import 'package:flutter/material.dart';
import '../widgets/contents.dart';

class HomePage extends StatefulWidget {
  final VoidCallback toggleTheme;
  const HomePage({super.key, required this.toggleTheme});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(

      appBar: AppBar(
      title: const Text("PORTFOLIO"),
      centerTitle: true,

      backgroundColor: isDarkMode 
          ? const Color.fromARGB(255, 0, 0, 0)  
          : const Color.fromARGB(255, 209, 209, 209),      
      actions: [
        IconButton(
          icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
          onPressed: widget.toggleTheme,
    ),
  ],
),

      body: const Contents(), //ang iyang body kay katong contents nga dart file
    );
  }
}
