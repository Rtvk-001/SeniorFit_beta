import 'package:flutter/material.dart';
import 'package:instagram_clone_flutter/model/exercise.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final Exercise exercise;
  final VoidCallback onInitialized;

  const VideoPlayerWidget({
    required this.exercise,
    required this.onInitialized,
  });

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController controller; // Declare it as late

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.exercise.videoUrl)
      ..initialize().then((value) {
        controller.setLooping(true);
        controller.play();

        widget.exercise.controller = controller;
        widget.onInitialized();
      });
  }

  @override
  Widget build(BuildContext context) => SizedBox.expand(
    child: controller.value.isInitialized
        ? VideoPlayer(controller)
        : Center(child: CircularProgressIndicator()),
  );

  @override
  void dispose() {
    super.dispose();
    controller.dispose(); // Dispose of the controller when the widget is disposed.
  }
}