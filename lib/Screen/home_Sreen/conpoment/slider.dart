import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Sliderss extends StatefulWidget {
  Sliderss({super.key});

  @override
  State<Sliderss> createState() => _SliderssState();

  final List<String> image = [
    "lib/image/slider/slider1.jpg",
    "lib/image/slider/slider2.jpg",
    "lib/image/slider/slider3.jpg",
  ];
}

class _SliderssState extends State<Sliderss> {
  int ischeckindex = 0; // Track the current page index

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            items: widget.image
                .map((imagePath) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,),
                  child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(imagePath),
                          ),
                        ),
                      ),
                ))
                .toList(),
            options: CarouselOptions(
              height: 190,
              viewportFraction: 1,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds:50),
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  ischeckindex = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: ischeckindex,
              count: widget.image.length,
              effect: const ScrollingDotsEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.grey,
                dotHeight: 5,
                dotWidth: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
