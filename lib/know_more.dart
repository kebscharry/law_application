import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import 'main.dart';

class KnowMore extends StatelessWidget {
  const KnowMore({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Get to know more about Lawyers",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                // Description Text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Dive into our story and expertise, explore our values,\nachievements and commitment to exceptional legal services.\nGet acquainted with us today.",
                    style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                  ),
                ),
                // Video Container
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200, // Increased height for better visibility
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                        child: SizedBox.expand(child: VideoPlayerWidget(assetPath: 'assets/sample.mp4'))),
                  ),
                ),
                // Body Text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Meet Our Professional Partners",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                // Body Description Text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Our team consists of seasoned professionals with decades of\ncombined experience, our team is dedicated to providing\nstrategic and effective legal solutions.",
                    style: TextStyle(fontSize: 15, color: Colors.grey[400]),
                  ),
                ),
                // Founder Image
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/partner1.jpg"), fit: BoxFit.cover),
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                // Founders Text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Paul Knowles\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Founding Partner",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Second Founder
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/partner2.jpg"), fit: BoxFit.cover),
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                // Founders Text
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Jane Cooper\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: "Founding Partner",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Corrected Video Player Widget
class VideoPlayerWidget extends StatefulWidget {
  final String assetPath;

  const VideoPlayerWidget({super.key, required this.assetPath});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.assetPath)
      ..initialize().then((_) {
        setState(() {}); // Update UI when video is ready
        _controller.setLooping(true); // Optional: Loop the video
      });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
        ? Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              IconButton(
                icon: Icon(
                  _isPlaying ? Icons.pause : Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  setState(() {
                    if (_isPlaying) {
                      _controller.pause();
                    } else {
                      _controller.play();
                    }
                    _isPlaying = !_isPlaying;
                  });
                },
              ),
            ],
          )
        : Center(child: CircularProgressIndicator());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
