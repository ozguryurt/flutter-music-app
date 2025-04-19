import 'package:flutter/material.dart';
import 'package:musicapp/features/explore/widgets/podcast_item_data.dart';

class NowPlayingPage extends StatelessWidget {
  final PodcastItemData podcastData;

  const NowPlayingPage({Key? key, required this.podcastData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1D2B),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Geri gitme işlevi
          },
        ),
        title: Text(
          'Now Playing',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: Image.asset(
                podcastData.imagePath,
                width: double.infinity,
                height: 320,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),

            Text(
              podcastData.title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              podcastData.author,
              style: TextStyle(color: Colors.white54, fontSize: 18),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 40),

            Container(
              child: Image.asset(
                "assets/audio.png",
                width: double.infinity,
                height: 35,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "24:32",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Text(
                  "34:00",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous_rounded, color: Colors.white),
                  onPressed: () {
                    //
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 48,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xFF2F3142),
                  ),
                  onPressed: () {
                    //
                  },
                ),
                IconButton(
                  icon: Icon(Icons.skip_next_rounded, color: Colors.white),
                  onPressed: () {
                    //
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
