import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:nikunj_portfolio/utils/constants.dart';
import 'package:nikunj_portfolio/data/data/testimonial_data.dart';
import 'package:nikunj_portfolio/screens/testimonials/animated_dot_widget.dart';
import 'package:nikunj_portfolio/data/bloc/testimonial/testimonial_bloc.dart';
import 'package:nikunj_portfolio/screens/testimonials/testimonial_widget.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80, top: 150),
      child: Column(
        children: [
          Text(
            "Hear from My Clients",
            style: GoogleFonts.anton(
              fontWeight: FontWeight.bold,
              fontSize: 44,
              letterSpacing: 1.4,
            ),
          ),
          const Text(
            "Building more than just apps – building trust",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 600,
            child: CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                pageSnapping: true,
                autoPlay: true,
                autoPlayInterval: kTestimonialSlidingDuration,
                height: 258,
                onPageChanged: (page, _) {
                  context
                      .read<TestimonialBloc>()
                      .add(UpdatePageEvent(index: page));
                },
              ),
              items: testimonialList
                  .map((e) => TestimonialWidget(testimonialModal: e))
                  .toList(),
            ),
          ),
          BlocBuilder<TestimonialBloc, TestimonialState>(
            builder: (context, state) {
              final index = state is CurrentTestimonialPage ? state.index : 0;

              return AnimatedDotWidget(
                currentSelectedDot: index,
                noOfDots: testimonialList.length,
              );
            },
          ),
        ],
      ),
    );
  }
}
