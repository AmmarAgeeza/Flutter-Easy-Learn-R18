import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_10_image_picker_geolocation/core/utils.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  XFile? fileImage;

  void pickImageFromUser() async {
    XFile? pickedImage = await pickImage(ImageSource.camera);
    setState(() {
      fileImage = pickedImage;
    });
  }

  bool isLoading = false;
  String address = 'init address';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: false, title: Text("Profile Screen")),
      body: Center(
        child: Column(
          children: [
            //image picker
            SizedBox(
              height: 200,
              width: 200,
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      // image: fileImage != null
                      //     ? DecorationImage(
                      //         image: FileImage(File(fileImage!.path)),
                      //       )
                      //     : null,
                      shape: BoxShape.circle,
                    ),
                    child: fileImage != null
                        ? Image.file(File(fileImage!.path))
                        : Icon(Icons.person, size: 200),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        pickImageFromUser();
                      },
                      icon: Icon(Icons.edit),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.bottomRight,
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(right: 24),
                  //     child: IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  //   ),
                  // ),
                ],
              ),
            ),

            SizedBox(
              height: 100,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  try {
                    setState(() {
                    isLoading = true;
                  });
                  await Future.delayed(Duration(seconds: 2));
                  Position position = await determinePosition();
                  log(position.latitude.toString());
                  log(position.longitude.toString());
                  Placemark placemark = await convertPositionToAddress(
                    position,
                  );
                  log(placemark.country.toString());
                  log(placemark.street.toString());
                  address =
                      "Country: ${placemark.country}. Street:${placemark.street}";
                  isLoading = false;
                  setState(() {});
                  } catch (e) {
                    log(e.toString());
                    //TODO: add flutter toast or snack bar on the task
                  }finally{
                  isLoading = false;
                  setState(() {
                    
                  });
                  }
                },
                child: isLoading
                    ? CircularProgressIndicator()
                    : Text("Get Location"),
              ),
            ),
            SizedBox(height: 35),
            Text(address),
          ],
        ),
      ),
    );
  }
}
