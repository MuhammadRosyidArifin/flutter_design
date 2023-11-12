import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

import 'fade_animation.dart';

class HomeDesign2 extends StatefulWidget {
  const HomeDesign2({super.key});

  @override
  State<HomeDesign2> createState() => _HomeDesign2State();
}

class _HomeDesign2State extends State<HomeDesign2> {
  late PageController _pageController;
  int totalPage = 2;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          makePage(
              image: 'https://source.unsplash.com/user/c_v_r/400x800',
              title: 'Coastal Cliffs',
              page: 1,
              description: loremIpsum(words: 20)),
          makePage(
              image: 'https://source.unsplash.com/random/400x800',
              title: 'Party',
              page: 2,
              description: loremIpsum(words: 15)),
        ],
      ),
    );
  }

  Widget makePage(
      {required String image,
      required String title,
      required int page,
      String description = ''}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [
              0.3,
              0.9,
            ],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/ ${totalPage.toString()}',
                    style: const TextStyle(
                      fontFamily: 'Nunito',
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeAnimation(
                      delay: 0,
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeAnimation(
                      delay: 0.2,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          const Text(
                            '4.0',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Colors.white70,
                            ),
                          ),
                          const Text(
                            '(2300)',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Colors.white38,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    FadeAnimation(
                      delay: 0.4,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Text(
                          description,
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            color: Colors.white.withOpacity(.6),
                            height: 1.9,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const FadeAnimation(
                      delay: 0.6,
                      child: Text(
                        'READ MORE',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
