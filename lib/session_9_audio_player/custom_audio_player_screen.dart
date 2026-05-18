import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/session_9_audio_player/core/app_audio.dart';

import 'components/player_artwork.dart';
import 'components/player_controls.dart';
import 'components/player_progress_bar.dart';
import 'components/player_speed_button.dart';
import 'components/player_title_section.dart';

class CustomAudioPlayerScreen extends StatefulWidget {
  const CustomAudioPlayerScreen({super.key});

  @override
  State<CustomAudioPlayerScreen> createState() =>
      _CustomAudioPlayerScreenState();
}

class _CustomAudioPlayerScreenState extends State<CustomAudioPlayerScreen> {
  late AudioPlayer player;
  bool isPlaying = false;
  double rateSpeed = 1;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await player.setSource(AssetSource(AppAudio.audio));
      // await  player.resume();
    });
  }

  void _togglePlayPause() {
    if (isPlaying) {
      player.pause();
    } else {
      player.resume();
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void _skipBack() async {
    //duration of audio
    final duration = await player.getDuration();
    //current postion
    final currentPostion = await player.getCurrentPosition();
    if (currentPostion != null && duration != null) {
      final newPosition = currentPostion - Duration(seconds: 10);
      player.seek(newPosition < Duration.zero ? Duration.zero : newPosition);
    }
  }

  void _skipForward() async {
    //duration of audio
    final duration = await player.getDuration(); //! 1 min
    //current postion
    final currentPostion = await player.getCurrentPosition(); //! 56 sec
    print("currnet Postion $currentPostion");
    //new postion  =  current + 10 sec
    if (currentPostion != null && duration != null) {
      final newPoition =
          currentPostion + Duration(seconds: 10); //56+ 10 = 1 min
      print("newPoition $newPoition");
      player.seek(newPoition > duration ? duration : newPoition);
    }
  }

  void _changeSpeed() {
    //1
    //1.5
    //2
    //1
    if (rateSpeed == 1) {
      rateSpeed = 1.5;
    } else if (rateSpeed == 1.5) {
      rateSpeed = 2;
    } else if (rateSpeed == 2) {
      rateSpeed = 1;
    }
    print(rateSpeed);
    setState(() {});
    player.setPlaybackRate(rateSpeed);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A2E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const PlayerArtwork(
                imagePath: 'assets/images/elsharawy.png',
                size: 250,
              ),
              const SizedBox(height: 40),
              const PlayerTitleSection(title: 'Elsharawy'),
              const SizedBox(height: 40),
              PlayerProgressBar(audioPlayer: player),
              const SizedBox(height: 30),
              PlayerControls(
                isPlaying: isPlaying,
                onPlayPause: _togglePlayPause,
                onSkipBack: _skipBack,
                onSkipForward: _skipForward,
              ),
              const SizedBox(height: 40),
              PlayerSpeedButton(currentSpeed: rateSpeed, onTap: _changeSpeed),
            ],
          ),
        ),
      ),
    );
  }
}
