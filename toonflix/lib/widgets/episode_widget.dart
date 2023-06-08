import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/webtton_episode_model.dart';

class Episode extends StatelessWidget {
  const Episode({
    super.key,
    required this.episode,
    required this.webtoonId,
  });

  final String webtoonId;
  final WebtoonEpisodeModel episode;

  onButtonTap() async {
    final url = Uri.parse(
        "https://comic.naver.com/webtoon/detail?titleId=$webtoonId&no=${episode.id}");
    await launchUrl(url);
    // await launchUrlString("https://google.com");
    // 위의 2줄을 한줄로 바꿔주는거
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.green.shade500,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                offset: const Offset(5, 5),
                color: Colors.black.withOpacity(0.5),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                episode.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const Icon(
                Icons.arrow_right_outlined,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
