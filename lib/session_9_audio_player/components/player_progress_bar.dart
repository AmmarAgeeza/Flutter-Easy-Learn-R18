import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PlayerProgressBar extends StatefulWidget {
  final AudioPlayer audioPlayer;

  const PlayerProgressBar({super.key, required this.audioPlayer});

  @override
  State<PlayerProgressBar> createState() => _PlayerProgressBarState();
}

// The following assertion was thrown building PlayerProgressBar(dirty, state: _PlayerProgressBarState#87091):
// Value 8.0 is not between minimum 0.0 and maximum 0.0
// 'package:flutter/src/material/slider.dart':
// Failed assertion: line 201 pos 10: 'value >= min && value <= max'
class _PlayerProgressBarState extends State<PlayerProgressBar> {
  Duration position = Duration.zero;
  Duration duration = Duration.zero;

  void trackStream() {
    widget.audioPlayer.onPositionChanged.listen((newposition) {
      position = newposition;
      setState(() {});
    });
    widget.audioPlayer.onDurationChanged.listen((newDuration) {
      duration = newDuration;
      setState(() {});
    });
  }

  @override
  void initState() {
    super.initState();
    trackStream();
  }

  @override
  Widget build(BuildContext context) {
    var max = duration.inMilliseconds > 0
        ? duration.inMilliseconds.toDouble()
        : 1.0;
    var currentPostion = position.inMilliseconds
        .clamp(0, duration.inMilliseconds)
        .toDouble();
    var sliderThemeData = SliderThemeData(
      trackHeight: 4,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 16),
      activeTrackColor: const Color(0xFFE94560),
      inactiveTrackColor: Colors.white.withValues(alpha: 0.2),
      thumbColor: const Color(0xFFE94560),
      overlayColor: const Color(0xFFE94560).withValues(alpha: 0.3),
    );
    return Column(
      children: [
        SliderTheme(
          data: sliderThemeData,
          child: Slider(
            value: currentPostion,
            max: max,
            onChanged: (value) {
              widget.audioPlayer.seek(Duration(milliseconds: value.toInt()));
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${position.inMinutes.toString().padLeft(2, '0')} : ${position.inSeconds.remainder(60).toString().padLeft(2, '0')}",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "${duration.inMinutes.toString().padLeft(2, '0')} : ${duration.inSeconds.remainder(60).toString().padLeft(2, '0')}",
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.6),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
