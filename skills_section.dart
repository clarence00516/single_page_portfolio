import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Skills",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Skill 1
          Container(
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 218, 217, 217),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                Icon(Icons.edit_outlined),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "I am a traditional artist as a hobby,\nI excel at drawing creatures and monsters.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
          ),

          // Skill 2
          Container(
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 218, 217, 217),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                Icon(Icons.assistant_outlined),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "I utilize AI tools for polishing my works\nand to assist me with my studies.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
          ),

          // Skill 3
          Container(
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 218, 217, 217),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                Icon(Icons.article_outlined),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "I excel at researching and reporting,\nI have learned new ways to become better.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
          ),

          // Skill 4
          Container(
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 218, 217, 217),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                Icon(Icons.keyboard_alt_outlined),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "I am a beginner when it comes to programming,\nbut I am willing to learn.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
          ),

          // Skill 5
          Container(
            margin: const EdgeInsets.symmetric(vertical: 6.0),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: isDarkMode
                  ? const Color.fromARGB(255, 0, 0, 0)
                  : const Color.fromARGB(255, 218, 217, 217),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              children: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "I got basic knowledge when it comes to video editing.\nI am also learning Photography.",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
