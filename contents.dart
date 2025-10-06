import 'package:flutter/material.dart';
import 'projects_section.dart';
import 'skills_section.dart';

class Contents extends StatelessWidget {
  const Contents({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView(
      padding: const EdgeInsets.all(10.0),
      children: [

  Card(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15),
  ),

  elevation: 4,
  margin: const EdgeInsets.all(10),
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        // Image on the left
        Container(
          height: 150,
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(2, 4),
              ),
            ],
          ),

          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              "assets/my_image.png",
              fit: BoxFit.cover,
            ),
          ),
        ),

        const SizedBox(width: 16),

        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "STUDENT DETAILS",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "\nFull name: Clarence M. Cajardo",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
              ),
              Text(
                "\nYear and Section: BSIT-3A",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
              ),
              SizedBox(height: 8),
              Text(
                "\nPersonal Quote:\n\n'I am a student of University of Science and Technology of Southern Philippines, although struggles and suffering are inevitable, I will keep moving towards my goal.'",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
      ],
    ),
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
