class Trend {
  final String image, title, creator,des;

  Trend({
    required this.image,
    required this.title,
    required this.creator,
    required this.des,
  });
}

List<Trend> trends = [
  Trend(image: "assets/book1.png", title: "Software Engineering", creator: "Ian Sommerville", des : "SE textbook"),
  Trend(image: "assets/book2.png", title: "Computer Network", creator: "Kurose Ross", des : "CN textbook"),
  Trend(image: "assets/book3.png", title: "Database", creator: "Elsmari Navathe", des : "DBS textbook"),
];