class Recent {
  final String title, image;
  final int percent;

  Recent({
    required this.title,
    required this.image,
    required this.percent,
  });
}

List<Recent> recents = [
  Recent(image: "assets/book1.png", title: "SE", percent: 90),
  Recent(image: "assets/book2.png", title: "Network", percent: 80),
  Recent(image: "assets/book3.png", title: "Database", percent: 40),
];
