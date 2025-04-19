import 'package:flutter/material.dart';
import 'package:musicapp/features/explore/widgets/bottom_nav_item.dart';
import 'package:musicapp/features/explore/widgets/category_chip.dart';
import 'package:musicapp/features/explore/widgets/podcast_item_data.dart';
import 'package:musicapp/features/getting_started/widgets/podcast_card.dart';

class ExplorePage extends StatelessWidget {
  final List<PodcastItemData> podcastData = [
    PodcastItemData(
      imagePath: 'assets/album_art_1.png',
      title: 'The missing 96 percent of the universe',
      author: 'Claire Malone',
    ),
    PodcastItemData(
      imagePath: 'assets/album_art_2.png',
      title: 'How Dolly Parton led me to an epiphany',
      author: 'Abumenyang',
    ),
    PodcastItemData(
      imagePath: 'assets/album_art_3.png',
      title: 'The missing 96 percent of the universe',
      author: 'Tir McDohl',
    ),
    PodcastItemData(
      imagePath: 'assets/album_art_4.png',
      title: 'Ngobam with Denny Caknan',
      author: 'Denny Kulon',
    ),
    PodcastItemData(
      imagePath: 'assets/album_art_1.png',
      title: 'The evolution of technology',
      author: 'Sarah Richards',
    ),
    PodcastItemData(
      imagePath: 'assets/album_art_2.png',
      title: 'Exploring the cosmos',
      author: 'John Doe',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1D2B),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            //
          },
        ),
        title: Text(
          'Podkes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.notifications_active, color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Color(0xFF1F1D2B),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF252836),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                hintStyle: TextStyle(color: Colors.white54),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Icon(Icons.search, color: Colors.white),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),

                    SizedBox(
                      height: 40,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CategoryChip(label: 'All', selected: true),
                          CategoryChip(label: 'Life'),
                          CategoryChip(label: 'Comedy'),
                          CategoryChip(label: 'Music'),
                          CategoryChip(label: 'Tech'),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),

                    // Trending başlığı
                    const Text(
                      "Trending",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 24),

                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(bottom: 16),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: podcastData.length,
                      itemBuilder: (context, index) {
                        final podcast = podcastData[index];
                        return PodcastCard(
                          image: podcast.imagePath,
                          title: podcast.title,
                          subtitle: podcast.author,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),

          Container(
            color: Color(0xFF252836),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomNavItem(
                  icon: Icons.home,
                  label: 'Discover',
                  selected: true,
                ),
                BottomNavItem(icon: Icons.my_library_music, label: 'Library'),
                BottomNavItem(icon: Icons.person, label: 'Profile'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
