import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black87,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find Your',
                      style: TextStyle(color: Colors.black87, fontSize: 25),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Inspiration',
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                          hintText: "Search you're looking for",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'UI Today',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          InkWell(
                            onTap: () {
                              context.go('/design2');
                            },
                            child: promoCard(image: 'assets/images/home-page-design-2.png'),
                          ),
                          const SizedBox(width: 8),
                          promoCard(image: ''),
                          const SizedBox(width: 8),
                          promoCard(image: ''),
                          const SizedBox(width: 8),
                          promoCard(image: ''),
                          const SizedBox(width: 8),
                          promoCard(image: ''),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget promoCard({String image = ''}) {
    return AspectRatio(
        aspectRatio: 2 / 3,
        child: image == '' ? _textCard() : _imagesCard(image));
  }

  Widget _textCard(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.1),
          ],
        ),
      ),
      child: const Center(child: Text('Images')),
    );
  }
  Widget _imagesCard(image) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.1),
          ],
        ),
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
    );
  }
}
