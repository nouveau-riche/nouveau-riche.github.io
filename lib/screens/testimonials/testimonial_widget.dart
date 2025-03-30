import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:nikunj_portfolio/data/modals/testimonial_modal.dart';
import 'package:nikunj_portfolio/utils/url_launcher_utils.dart';

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
                  Colors.pink.withValues(alpha: 0.1),
                  Colors.greenAccent.withValues(alpha: 0.1),
                  Colors.blue.withValues(alpha: 0.1),
                  Colors.amber.withValues(alpha: 0.1),
                  // Colors.pink.shade900.withValues(alpha: 0.2),
                  // Colors.greenAccent.shade700.withValues(alpha: 0.2),
                  // Colors.blue.shade900.withValues(alpha: 0.2),
                  // Colors.amber.shade900.withValues(alpha: 0.2),

                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              color: Colors.grey.shade200.withValues(alpha: 0.5),
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
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerRight,
                  child: FaIcon(FontAwesomeIcons.quoteRight),
                ),
                const Spacer(),
                InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () {
                    UrlLauncherUtils.openUrl(testimonialModal.reviewerLinkedinUrl);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
