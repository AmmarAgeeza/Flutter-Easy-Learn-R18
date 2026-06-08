import 'dart:developer';

import 'package:flutter/material.dart';

import '../widgets/custom_input_field.dart';
import '../widgets/custom_location_button.dart';

class ProfileSetupScreen extends StatelessWidget {
  const ProfileSetupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 16),

              // 1. Profile Avatar with Edit Button
              // ProfileAvatarWithEditButton(),
              const SizedBox(height: 32),

              // 2. Personal Details Section
              const Text(
                'Personal Details:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF607D8B), // Slate/Muted blue text color
                ),
              ),
              const SizedBox(height: 12),
              const CustomInputField(
                hintText: 'Enter your name',
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              const CustomInputField(
                hintText: 'Enter your email',
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              const CustomInputField(
                hintText: 'Enter your job title',
                icon: Icons.work,
              ),
              const SizedBox(height: 24),

              // 3. Short Bio Section
              const Text(
                'Short Bio:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF607D8B),
                ),
              ),
              const SizedBox(height: 12),
              const CustomInputField(
                hintText: 'Enter your bio',
                maxLines: 4, // Multi-line block
              ),
              const SizedBox(height: 32),

              // Divider line
              const Divider(color: Colors.grey, thickness: 1),
              const SizedBox(height: 24),

              // 4. Action Button
              CustomButton(
                title: "Get Location",
                backgroundColor: const Color(0xFF66BB6A),
                onPressed: () {
                  // Handle location action
                  log("Location button tapped");
                },
              ),
              const SizedBox(height: 24),
              // 5. Database Buttons
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      title: "Save",
                      backgroundColor: const Color(0xFF66BB6A),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(
                      title: "Load",
                      backgroundColor: Colors.blueAccent,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(
                      title: "Delete",
                      backgroundColor: Colors.red,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
