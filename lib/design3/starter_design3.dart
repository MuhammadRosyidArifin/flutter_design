import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'fade_animation_design3.dart';

class StarterDesign3 extends StatelessWidget {
  const StarterDesign3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://source.unsplash.com/random/400x800/?food'),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FadeAnimation(
                  child: Text(
                    'Taking Order For Delivery',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.2,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const FadeAnimation(
                  delay: .3,
                  child: Text(
                    'See Restaurant nearby by \nadding location',
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.4,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                FadeAnimation(
                  delay: .5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.yellow,
                          Colors.orange,
                        ],
                      ),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        context.go('/design3/home');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minWidth: double.infinity,
                      child: const Text(
                        "Start",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const FadeAnimation(
                  delay: .7,
                  child: Align(
                    child: Text(
                      'Now Delivery To Your Door 24/7',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
