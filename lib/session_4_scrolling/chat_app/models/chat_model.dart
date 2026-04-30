class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;
  final bool isRead;
  ChatModel({
    required this.name,
    required this.message,
    required this.time,
    required this.avatarUrl,
    required this.isRead,
  });
}


List<ChatModel> chatsList = [
  ChatModel(
    name: "John Doe",
    message: "Hi, How are you?",
    time: "10:00 AM",
    avatarUrl: "assets/images/person (1).jpg",
    isRead: false,
  ),
  ChatModel(
    name: "Maha Ahmed",
    message: "what are you doing?",
    time: "10:50 AM",
    avatarUrl: "assets/images/person (2).jpg",
    isRead: false,
  ),
  ChatModel(
    name: "Ali Ahmed",
    message: "I am fine, thank you!",
    time: "11:00 AM",
    avatarUrl: "assets/images/person (3).jpg",
    isRead: true,
  ),
  ChatModel(
    name: "sara Gamal",
    message: "I miss you 🥹",
    time: "01:00 PM",
    avatarUrl: "assets/images/person (4).jpg",
    isRead: true,
  ),


  // Added items (5 -> 12)
  ChatModel(
    name: "Omar Hassan",
    message: "Are we meeting today?",
    time: "01:20 PM",
    avatarUrl: "assets/images/person (5).jpg",
    isRead: false,
  ),
  ChatModel(
    name: "Nour Ali",
    message: "Send me the file when you can 📎",
    time: "02:05 PM",
    avatarUrl: "assets/images/person (6).jpg",
    isRead: true,
  ),
  ChatModel(
    name: "Youssef Adel",
    message: "😂😂 That was so funny!",
    time: "02:40 PM",
    avatarUrl: "assets/images/person (7).jpg",
    isRead: false,
  ),
  ChatModel(
    name: "Huda Samir",
    message: "Can you call me in 5 minutes?",
    time: "03:10 PM",
    avatarUrl: "assets/images/person (8).jpg",
    isRead: true,
  ),
  ChatModel(
    name: "Karim Mostafa",
    message: "On my way 🚗",
    time: "04:00 PM",
    avatarUrl: "assets/images/person (9).jpg",
    isRead: true,
  ),
  ChatModel(
    name: "Laila Mohamed",
    message: "Don’t forget the event tomorrow!",
    time: "05:15 PM",
    avatarUrl: "assets/images/person (10).jpg",
    isRead: false,
  ),
  ChatModel(
    name: "Ahmed Fathy",
    message: "Okay, done ✅",
    time: "06:30 PM",
    avatarUrl: "assets/images/person (11).jpg",
    isRead: true,
  ),
  ChatModel(
    name: "Reem Khaled",
    message: "Good night 🌙",
    time: "11:45 PM",
    avatarUrl: "assets/images/person (12).jpg",
    isRead: false,
  ),
];
