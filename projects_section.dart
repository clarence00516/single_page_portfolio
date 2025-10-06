import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "PROJECTS",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
  const SizedBox(height: 20),


  ProjectCard(
      imagePath: "assets/portfolioimage.png",
      title: "Simple Portfolio",
      description:
      "A personal portfolio website showcasing my projects and skills.",
          
          onPressed: () async {
  final Uri url = Uri.parse("https://github.com/clarence00516/single_page_portfolio");

  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
},
),
const SizedBox(height: 16),

ProjectCard(
            imagePath: "assets/Calculatorpic.png",
            title: "C++ Calculator",
            description:
                "A simple calculator built using C++ with basic arithmetic functions.",
            onPressed: () async {
  final Uri url = Uri.parse("https://github.com/clarence00516/C-Calculator");

  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
},
          ),


const SizedBox(height: 16),
ProjectCard(
            imagePath: "assets/foodmenu.png",
            title: "Food Menu Project",
            description:
                "A simple food menu website that features 3 pages.",
            onPressed: () async {
  final Uri url = Uri.parse("https://github.com/clarence00516/Food-Menu-Website");

  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
},
          ),



const SizedBox(height: 16),
ProjectCard(
            imagePath: "assets/trivia_game.png",
            title: "Trivia Game",
            description:
                "A simple C++ trvivia game that is good for starters.",
            onPressed: () async {
  final Uri url = Uri.parse("https://github.com/clarence00516/Trivia-Game");

  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
},
          ),
        ],
      ),
    );
  }
}
