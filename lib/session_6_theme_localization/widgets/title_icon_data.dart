import 'package:flutter/material.dart';

class TitleIconData extends StatelessWidget {
  const TitleIconData({
    super.key,
    required this.title,
    required this.data,
    required this.icon,
  });
  final String title, data;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.bodyLarge),
        ListTile(
          tileColor: Color(0xFF004aad),
          leading: Icon(icon, color: Colors.white),
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(16),
          // ),
          title: Text(data, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
    );
  }
}
