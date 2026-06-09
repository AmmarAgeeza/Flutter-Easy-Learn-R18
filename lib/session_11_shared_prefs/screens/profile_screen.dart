import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_11_shared_prefs/core/database/cache_helper.dart';

import '../widgets/custom_input_field.dart';
import '../widgets/custom_location_button.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController bioController = TextEditingController();
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
              CustomInputField(
                controller: nameController,
                hintText: 'Enter your name',
                icon: Icons.person,
              ),
              const SizedBox(height: 16),
              CustomInputField(
                controller: emailController,
                hintText: 'Enter your email',
                icon: Icons.email,
              ),
              const SizedBox(height: 16),
              CustomInputField(
                controller: jobTitleController,
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
              CustomInputField(
                controller: bioController,
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
                      onPressed: () async {
                        await CacheHelper.saveString(
                          CacheHelperKeys.nameKey,
                          nameController.text,
                        );
                        await CacheHelper.saveString(
                          CacheHelperKeys.emailKey,
                          emailController.text,
                        );
                        await CacheHelper.saveString(
                          CacheHelperKeys.jobTitleKey,
                          jobTitleController.text,
                        );
                        await CacheHelper.saveString(
                          CacheHelperKeys.bioKey,
                          bioController.text,
                        );
                        log("Data saved to prefs");
                        emailController.clear();
                        nameController.clear();
                        jobTitleController.clear();
                        bioController.clear();
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(
                      title: "Load",
                      backgroundColor: Colors.blueAccent,
                      onPressed: () async {
                        String name =
                            await CacheHelper.getString(
                              CacheHelperKeys.nameKey,
                            ) ??
                            "";
                        String email =
                            await CacheHelper.getString(
                              CacheHelperKeys.emailKey,
                            ) ??
                            "";
                        String jobTitle =
                            await CacheHelper.getString(
                              CacheHelperKeys.jobTitleKey,
                            ) ??
                            "";
                        String bio =
                            await CacheHelper.getString(
                              CacheHelperKeys.bioKey,
                            ) ??
                            "";
                        log("name: $name");
                        log("email: $email");
                        log("jobTitle: $jobTitle");
                        log("bio: $bio");
                        emailController.text = email;
                        nameController.text = name;
                        jobTitleController.text = jobTitle;
                        bioController.text = bio;
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: CustomButton(
                      title: "Delete",
                      backgroundColor: Colors.red,
                      onPressed: () async {
                        CacheHelper.clear();
                      },
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
