import 'package:flutter/material.dart';

class PlayerArtwork extends StatelessWidget {
  final String imagePath;
  final double size;

  const PlayerArtwork({
    super.key,
    required this.imagePath,
    this.size = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.1),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: const Color(0xFF16213E),
              child: const Icon(
                Icons.person,
                size: 80,
                color: Colors.white24,
              ),
            );
          },
        ),
      ),
    );
  }
}
