import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    List videoIds = [
      'JVx2HMvNk54',
      'b6oAvadGapY',
      'DLgyEtzOGYo',
      'bZ1fEyUYaRs',
      'SOwQJqdcgAo',
      'tnP6WJNEN24'
    ];
    return Column(
      children: [
        Row(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
            child: const Text(
              'Testimonials',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: .5,
              ),
            ),
          ),
        ]),
        Container(
          padding: const EdgeInsets.fromLTRB(24,0,24,0),
          child: SizedBox(
            height:250,
            child: Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: videoIds.length,
                itemBuilder: (context, index) => Column(       
                  children: [
                    SizedBox(
                      width: 250,
                      height: 200,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: YoutubePlayer(
                          controller: YoutubePlayerController.fromVideoId(
                            videoId: videoIds[index],
                            autoPlay: false,
                            params:
                                const YoutubePlayerParams(showFullscreenButton: true),
                          ),
                          aspectRatio: 16 / 9,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
