import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';

class VideoPlayerW extends StatefulWidget {
  const VideoPlayerW({Key? key}) : super(key: key);

  @override
  State<VideoPlayerW> createState() => _VideoPlayerWState();
}

class _VideoPlayerWState extends State<VideoPlayerW> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')));
  }

  @override
  Widget build(BuildContext context) {
    return FlickVideoPlayer(
      flickManager: flickManager
    ); 
      //Container(
        // child: _controller.value.isInitialized
        //     ? AspectRatio(
        //         aspectRatio: _controller.value.aspectRatio,
        //         child: VideoPlayer(_controller),
        //       )
        //     : Container(),
        //);
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
}

// import 'package:flutter/material.dart';
// import 'package:appinio_video_player/appinio_video_player.dart';
//
// class VideoPlayer extends StatefulWidget {
//   const VideoPlayer({super.key});
//
//   @override
//   State<VideoPlayer> createState() => _VideoPlayerState();
// }
//
// class _VideoPlayerState extends State<VideoPlayer> {
//   late VideoPlayerController videoPlayerController;
//   late CustomVideoPlayerController _customVideoPlayerController;
//
//   final longVideo = Uri(
//     scheme: 'https',
//     host: 'commondatastorage.googleapis.com',
//     path: '/gtv-videos-bucket/sample/BigBuckBunny.mp4',
//   );
//
//   @override
//   void initState() {
//     super.initState();
//
//     videoPlayerController = VideoPlayerController.networkUrl(
//       longVideo,
//     )..initialize().then((value) => setState(() {}));
//     _customVideoPlayerController = CustomVideoPlayerController(
//       context: context,
//       videoPlayerController: videoPlayerController,
//     );
//   }
//
//   @override
//   void dispose() {
//     _customVideoPlayerController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(19))),
//       child: Column(children: [
//         CustomVideoPlayer(
//             customVideoPlayerController: _customVideoPlayerController),
//         TextButton(
//             child: const Text('FullScreen'),
//             onPressed: () {
//               _customVideoPlayerController.setFullscreen(true);
//             })
//       ]),
//     );
//   }
// }
