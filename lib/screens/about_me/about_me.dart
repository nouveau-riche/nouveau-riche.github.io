import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:nikunj_portfolio/generated/assets.dart';
import 'package:nikunj_portfolio/utils/constants.dart';
import 'package:nikunj_portfolio/screens/about_me/follow_btn_tile_widget.dart';
import 'package:nikunj_portfolio/utils/method_utils.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        Row(
          children: [
            Container(
              width: mq.width * 0.4,
              height: mq.height * 1.1,
              color: Theme.of(context).canvasColor,
            ),
            SizedBox(width: mq.width * 0.6),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: mq.height * 0.2, left: mq.width * 0.18),
          height: mq.height * 0.72,
          width: mq.width * 0.58,
          child: Row(
            children: [
              Container(
                width: mq.width * 0.26,
                margin: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).focusColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor,
                      blurRadius: 6,
                      offset: const Offset(0.0, 0.0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: mq.height * 0.63,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CircleAvatar(
                            radius: mq.width * 0.072,
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            backgroundImage: const AssetImage(
                              Assets.imagesNikunj,
                            ),
                          ),
                          const Text(
                            kName,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '_____',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          const Text(
                            kJobTitle,
                            style: TextStyle(
                              fontSize: 20,
                              letterSpacing: 1.5,
                              wordSpacing: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const FollowBtnTileWidget(),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(mq.width * 0.02),
                width: mq.width * 0.30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Hello',
                      style: GoogleFonts.anton(
                        fontWeight: FontWeight.bold,
                        fontSize: 76,
                        letterSpacing: 1.8,
                      ),
                    ),
                    const Text(
                      'This is Nikunj',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: Theme.of(context).primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            child: const Text(
                              'RESUME',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              downloadFileFromUrl(
                                fileUrl: kResumeUrl,
                                fileName: "Nikunj_Sharma.pdf",
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 25),
                        SizedBox(
                          width: 120,
                          child: TextButton(
                            onPressed: () {
                              // TODO: scroll to projects
                            },
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              side: const BorderSide(
                                color: Colors.black,
                                width: 1.6,
                              ),
                              foregroundColor: Colors.black,
                            ),
                            child: const Text(
                              'PROJECTS',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Enthusiastic Flutter Developer eager to\ncontribute to team success through hard work, \nattention to detail and excellent organizational \nskills. Clear understanding of Flutter, Firebase \nand Data Structure. Motivated to learn, grow and excel.',
                      style: TextStyle(
                        wordSpacing: 1,
                        fontSize: 16,
                        letterSpacing: 0.6,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
