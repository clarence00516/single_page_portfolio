import 'package:flutter/material.dart';
import 'projects_section.dart';
import 'skills_section.dart';

class Contents extends StatelessWidget {
  const Contents({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: [
        // Circle Picture
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(106, 0, 0, 0),
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: const Offset(2, 4),
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "assets/my_image.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        // Student Details
        Container(
          height: 300,
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: isDarkMode
                ? const Color.fromARGB(255, 0, 0, 0)
                : const Color.fromARGB(255, 218, 217, 217),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "STUDENT DETAILS",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "Full name: Clarence M. Cajardo",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
              ),
              Text(
                "Year and Section: BSIT-3A",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
              ),
              Text(
                "Personal Quote: \n\n'I am a student of University of Science and Technology of Southern Philippines, although struggles and suffering are inevitable, I will keep moving towards my goal.'",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),

        
        // Skills Section
        const SkillsSection(),


        // Projects Section
        const ProjectsSection(),

        
      ],
    );
  }
}
