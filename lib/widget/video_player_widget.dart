import 'package:shapeme/model/exercise.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final Exercise exercise;
  final VoidCallback onInitialized;

  const VideoPlayerWidget({
    @required this.exercise,
    @required this.onInitialized,
  });

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget>{
  VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.exercise.videoUrl)
      ..initialize().then((value) {
        controller.setLooping(true);
        controller.play();
        widget.exercise.controller = controller;
        widget.onInitialized();
        super.initState();
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      SizedBox.expand(
        child: controller.value.initialized
            ? VideoPlayer(controller)
            : Center(child: CircularProgressIndicator()),
      );

//   VideoPlayerController _controller;
//
//   void _initController(String link) {
//     _controller = VideoPlayerController.asset(widget.exercise.videoUrl)
//       ..initialize().then((value) {
//         _controller.setLooping(true);
//         _controller.play();
//         widget.exercise.controller = _controller;
//         widget.onInitialized();
//         setState(() {});
//       });
//   }
//
//   Future<void> _onControllerChange() async {
//     if (_controller == null) {
//       // If there was no controller, just create a new one
//       _initController(widget.exercise.videoUrl);
//     } else {
//       // If there was a controller, we need to dispose of the old one first
//       final oldController = _controller;
//
//       // Registering a callback for the end of next frame
//       // to dispose of an old controller
//       // (which won't be used anymore after calling setState)
//       WidgetsBinding.instance.addPostFrameCallback((_) async {
//         await oldController.dispose();
//
//         // Initing new controller
//         _initController(widget.exercise.videoUrl);
//       });
//
//       // Making sure that controller is not used by setting it to null
//       setState(() {
//         _controller = null;
//       });
//     }
//   }
//
//   @override
// Widget build(BuildContext context) =>
//     SizedBox.expand(
//       child: _controller.value.initialized
//           ? VideoPlayer(_controller)
//           : Center(child: CircularProgressIndicator()),
//     );
}
