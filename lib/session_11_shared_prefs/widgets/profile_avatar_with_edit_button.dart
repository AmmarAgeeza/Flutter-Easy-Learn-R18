import 'package:flutter/material.dart';

class ProfileAvatarWithEditButton extends StatelessWidget {
  const ProfileAvatarWithEditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF262626), width: 3),
            ),
            child: const CircleAvatar(
              radius: 64,
              backgroundColor: Colors.transparent,
              child: Icon(Icons.person, size: 100, color: Color(0xFF262626)),
            ),
          ),
          Positioned(
            bottom: 4,
            right: 4,
            child: Container(
              height: 36,
              width: 36,
              decoration: const BoxDecoration(
                color: Color(0xFF66BB6A),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Icon(Icons.edit, color: Colors.white, size: 18),
                onPressed: () {
                  // Handle avatar edit action
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
