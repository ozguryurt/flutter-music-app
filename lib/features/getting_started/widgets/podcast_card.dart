import 'package:flutter/material.dart';
import 'package:musicapp/features/explore/widgets/podcast_item_data.dart';
import 'package:musicapp/features/now_playing/view/now_playing_page.dart';

class PodcastCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const PodcastCard({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => NowPlayingPage(
                  podcastData: PodcastItemData(
                    imagePath: image,
                    title: title,
                    author: subtitle,
                  ),
                ),
          ),
        );
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: Image.asset(
                image,
                width: double.infinity,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
