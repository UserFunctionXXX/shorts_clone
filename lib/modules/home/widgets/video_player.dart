import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerItem extends StatefulWidget {
  final String? videoUrl;
  const VideoPlayerItem({
    Key? key,
    required this.videoUrl,
  }) : super(key: key);

  @override
  _VideoPlayerItemState createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: widget.videoUrl ?? 'iLnmTe5Q2Qw',
    flags: const YoutubePlayerFlags(
      autoPlay: true,
      hideControls: true,
      showLiveFullscreenButton: false,
      hideThumbnail: false,
    ),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        if (_controller.value.isPlaying) {
          _controller.pause();
        } else {
          _controller.play();
        }
      },
      child: VisibilityDetector(
        onVisibilityChanged: (visibilityInfo) {
          var visiblePercentage = visibilityInfo.visibleFraction * 100;
          if (visiblePercentage <= 20) {
            if (_controller.value.isPlaying) {
              _controller.pause();
            }
          } else {
            if (!_controller.value.isPlaying) {
              _controller.play();
            }
          }
          debugPrint(
              'renan Widget ${visibilityInfo.key} is ${visiblePercentage}% visible');
        },
        key: Key(widget.videoUrl!),
        child: Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
          ),
        ),
      ),
    );
  }
}
