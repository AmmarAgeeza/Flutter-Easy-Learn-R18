import 'package:flutter/material.dart';

class PlayerSpeedButton extends StatelessWidget {
  final double currentSpeed;
  final VoidCallback onTap;

  const PlayerSpeedButton({
    super.key,
    required this.currentSpeed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.speed,
              size: 18,
              color: Colors.white.withValues(alpha: 0.8),
            ),
            const SizedBox(width: 8),
            Text(
              "${currentSpeed}x",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
