class Skill {
  final String title;
  final String technologies;
  final String icon;
  const Skill({
    required this.title,
    required this.technologies,
    required this.icon,
  });
  static const List<Skill> skills = [
    Skill(
      title: "Frontend",
      technologies: "React, Vue, Tailwind",
      icon: "assets/portofolio_images/frontend.svg",
    ),
    Skill(
      title: "Backend",
      technologies: "Node.js, Python, SQL",
      icon: "assets/portofolio_images/backend.svg",
    ),
    Skill(
      title: "Cloud",
      technologies: "AWS, Docker, CI/CD",
      icon: "assets/portofolio_images/cloud.svg",
    ),
    Skill(
      title: "UI/UX",
      technologies: "Figma, Prototyping",
      icon: "assets/portofolio_images/uiux.svg",
    ),
  ];
}
