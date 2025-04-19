import 'package:flutter/material.dart';
import 'package:musicapp/features/explore/view/explore_page.dart';
import 'package:musicapp/features/getting_started/widgets/swiper_item_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GettingStartedPage extends StatefulWidget {
  const GettingStartedPage();

  @override
  State<GettingStartedPage> createState() => _GettingStartedPageState();
}

class _GettingStartedPageState extends State<GettingStartedPage> {
  final PageController _controller = PageController();

  final List<SwiperItemData> swiperData = [
    SwiperItemData(
      imagePath: 'assets/image_1.png',
      title: 'Podkes',
      description:
          'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
    ),
    SwiperItemData(
      imagePath: 'assets/image_1.png',
      title: 'Podkes',
      description:
          'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
    ),
    SwiperItemData(
      imagePath: 'assets/image_1.png',
      title: 'Podkes',
      description:
          'A podcast is an episodic series of spoken word digital audio files that a user can download to a personal device for easy listening.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: swiperData.length,
                itemBuilder: (context, index) {
                  final item = swiperData[index];
                  return Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset(item.imagePath)),
                        SizedBox(height: 32),
                        Text(
                          item.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          item.description,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 48),
                      ],
                    ),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: swiperData.length,
              effect: CustomizableEffect(
                activeDotDecoration: DotDecoration(
                  width: 24,
                  height: 8,
                  color: Color(0xFF525298),
                  borderRadius: BorderRadius.circular(8),
                ),
                dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Color(0xFF7B8085),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            SizedBox(height: 64),
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExplorePage()),
                  );
                },
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF525298),
                    size: 32,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
