import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nikunj_portfolio/data/modals/testimonial_modal.dart';

class TestimonialWidget extends StatelessWidget {
  final TestimonialModal testimonialModal;

  const TestimonialWidget({super.key, required this.testimonialModal});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 610,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.pink.withOpacity(0.1),
                  Colors.greenAccent.withOpacity(0.1),
                  Colors.blue.withOpacity(0.1),
                  Colors.amber.withOpacity(0.1),
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              color: Colors.grey.shade200.withOpacity(0.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  testimonialModal.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  testimonialModal.review,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerRight,
                  child: FaIcon(FontAwesomeIcons.quoteRight),
                ),
                const Spacer(),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                        testimonialModal.reviewerImage,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          testimonialModal.reviewerName,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          testimonialModal.reviewerDetails,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
