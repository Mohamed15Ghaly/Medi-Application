import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:team/core/utils/medi_colors.dart';
import 'package:team/core/utils/medi_media_query.dart';
import 'package:video_player/video_player.dart';

class VideoPresentation extends StatefulWidget {
  const VideoPresentation({super.key, required this.videoPath});
  final String videoPath;

  @override
  State<VideoPresentation> createState() => _VideoPresentationState();
}

class _VideoPresentationState extends State<VideoPresentation> {
  late FlickManager _flickManager;
  @override
  void initState() {
    _flickManager = FlickManager(
      autoPlay: false,
      videoPlayerController: VideoPlayerController.asset(widget.videoPath),
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
    return SizedBox(
      width: context.width,
      height: context.height / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: FlickVideoPlayer(
          flickVideoWithControls: FlickVideoWithControls(
            controls: IconTheme(
                data: const IconThemeData(color: MediColors.thirdColor),
                child: FlickPortraitControls(
                  progressBarSettings: FlickProgressBarSettings(
                    bufferedColor: MediColors.secondaryColor.withOpacity(0.2),
                    playedColor: MediColors.thirdColor,
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
