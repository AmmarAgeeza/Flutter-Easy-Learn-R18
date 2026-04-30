class StoriesModel {
  final String image;
  final bool isRead;
  StoriesModel({required this.image, required this.isRead});
}

List<StoriesModel> storiesList = [
  StoriesModel(image: "assets/images/person (1).jpg", isRead: false),
  StoriesModel(image: "assets/images/person (2).jpg", isRead: false),
  StoriesModel(image: "assets/images/person (3).jpg", isRead: true),
  StoriesModel(image: "assets/images/person (4).jpg", isRead: true),
  StoriesModel(image: "assets/images/person (9).jpg", isRead: true),
  StoriesModel(image: "assets/images/person (10).jpg", isRead: false),
  StoriesModel(image: "assets/images/person (11).jpg", isRead: true),
  StoriesModel(image: "assets/images/person (12).jpg", isRead: true),
  StoriesModel(image: "assets/images/person (5).jpg", isRead: false),
  StoriesModel(image: "assets/images/person (6).jpg", isRead: true),
  StoriesModel(image: "assets/images/person (7).jpg", isRead: false),
  StoriesModel(image: "assets/images/person (8).jpg", isRead: true),
];
