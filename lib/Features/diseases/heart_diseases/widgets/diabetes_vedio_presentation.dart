import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:video_player/video_player.dart';

class VideoPresentation extends StatefulWidget {
  const VideoPresentation({super.key});

  @override
  State<VideoPresentation> createState() => _VideoPresentationState();
}

class _VideoPresentationState extends State<VideoPresentation> {
  late FlickManager _flickManager;
  @override
  void initState() {
    _flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController:
          VideoPlayerController.asset("assets/images/Diabetes.mp4"),
    );
    super.initState();
  }

  @override
  void dispose() {
    _flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 16,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(10),
        child: FlickVideoPlayer(
          flickVideoWithControls: FlickVideoWithControls(
            controls: IconTheme(
                data: const IconThemeData(color: MediColors.thirdColor),
                child: FlickPortraitControls(
                  progressBarSettings: FlickProgressBarSettings(
                    bufferedColor: MediColors.secondaryColor.withOpacity(0.2),
                    playedColor: Colors.black54,
                    handleColor: MediColors.thirdColor,
                  ),
                )),
          ),
          flickManager: _flickManager,
        ),
      ),
    );
  }
}