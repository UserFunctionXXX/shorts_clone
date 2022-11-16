import 'package:flutter/material.dart';
import 'package:shorts_clone/modules/home/home_store.dart';
import 'package:shorts_clone/modules/home/widgets/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePage extends StatefulWidget {
  final HomeStore homeStore;

  const HomePage({
    Key? key,
    required this.homeStore,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: controller,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [...getVideos()],
    ));
  }

  List<Widget> getVideos() {
    var videosPage = <Widget>[];

    for (var shortVideoUrl in widget.homeStore.videoList) {
      videosPage.add(VideoPlayerItem(
        videoUrl: YoutubePlayer.convertUrlToId(shortVideoUrl),
      ));
    }

    return videosPage;
  }
}
