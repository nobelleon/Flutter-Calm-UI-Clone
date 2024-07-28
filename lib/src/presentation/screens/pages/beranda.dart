import 'package:flutter/material.dart';

import '../../../config/style/calm_colors.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  double opacity = 0;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100)).then(
      (value) => setState(() {
        opacity = 1;
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 1.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Image.asset(
              'assets/img/profile01.png',
              width: 90,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Image.asset(
          'assets/img/logo.png',
          width: 100,
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/bg.png'),
              ),
            ),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 2000),
              opacity: opacity,
              child: ListView(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                children: [
                  const SizedBox(
                    height: 300,
                  ),
                  const Text(
                    'Good Morning John',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildHorizontalSuggestions(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildCategories(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildSubtitleCategory(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildHorizontalSuggestions2(),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          buildBottomBar()
        ],
      ),
    );
  }

  Widget buildHorizontalSuggestions() {
    return SizedBox(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildCoverCard('Daily \nMove', 'assets/img/cover01.png',
              'assets/img/profile01.png'),
          buildCoverCard('Daily \nJay', 'assets/img/cover02.png',
              'assets/img/profile02.png'),
          buildCoverCard('Daily \nInspiration', 'assets/img/cover03.png',
              'assets/img/profile03.png'),
        ],
      ),
    );
  }

  Widget buildHorizontalSuggestions2() {
    return SizedBox(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buildCoverCard1('Daily Calm \nHighlights', 'assets/img/cover04.jpeg',
              'assets/img/card01.png'),
          buildCoverCard1('Daily \nTrip', 'assets/img/cover05.jpeg',
              'assets/img/card02.png'),
          buildCoverCard1('Just \nPiano', 'assets/img/cover06.jpeg',
              'assets/img/card03.png'),
        ],
      ),
    );
  }

  Widget buildCategories() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        buildCategoryChip(
          'Meditation',
          const Icon(
            Icons.circle_outlined,
            color: calmblue2,
          ),
        ),
        buildCategoryChip(
          'Sleep',
          const Icon(
            Icons.bed,
            color: Colors.purple,
          ),
        ),
        buildCategoryChip(
          'Music',
          const Icon(
            Icons.circle_outlined,
            color: calmblue2,
          ),
        ),
        buildCategoryChip(
          'Dailies',
          const Icon(
            Icons.circle_outlined,
            color: calmblue2,
          ),
        ),
        buildCategoryChip(
          'Wisdom',
          const Icon(
            Icons.bubble_chart,
            color: Colors.yellow,
          ),
        ),
        buildCategoryChip(
          'Kids',
          const Icon(
            Icons.flag,
            color: Colors.cyan,
          ),
        )
      ],
    );
  }

  Widget buildCategoryChip(String title, Icon icon) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(
              width: 4,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildSubtitleCategory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Kickstart Your Morning',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Text(
                'See All',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }

  Widget buildBottomBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 100,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          gradient: LinearGradient(
            colors: [calmblue1, calmblue2],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.verified_user_sharp,
                    color: Colors.white,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCoverCard(
    String title,
    String image,
    String profile,
  ) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCustomCard(image, title),
          const SizedBox(
            height: 12,
          ),
          buildMetaData(profile)
        ],
      );

  Widget buildMetaData(String profile) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          child: Image.asset(profile),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Daily Move',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 175,
              child: Text(
                'A daily stretching practice for everyone',
                softWrap: true,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'July 7 . You are Resilient',
              style: TextStyle(color: Colors.white),
            ),
          ],
        )
      ],
    );
  }

  Widget buildCoverCard1(
    String title,
    String image,
    String profile,
  ) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildCustomCard(image, title),
          const SizedBox(
            height: 12,
          ),
          buildMetaData1(profile)
        ],
      );

  Widget buildMetaData1(String profile) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          child: Image.asset(profile),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Daily Calm Highlights',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 175,
              child: Text(
                'A daily stretching practice for everyone',
                softWrap: true,
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'July 7 . You are Resilient',
              style: TextStyle(color: Colors.white),
            ),
          ],
        )
      ],
    );
  }

  Widget buildCustomCard(String image, String title) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
      ),
      child: Container(
        width: 250,
        height: 175,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,
            top: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
              Chip(
                backgroundColor: Colors.black.withOpacity(.7),
                avatar: const Icon(
                  Icons.video_camera_back,
                  color: Colors.white,
                ),
                label: const Text(
                  '6 min',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
