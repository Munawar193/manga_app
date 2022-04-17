import 'package:flutter/material.dart';
import 'package:manga_app/constants/thame.dart';

class PopularCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String info;
  final double rating;
  const PopularCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.info,
    this.rating = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 30,
                width: 25,
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6),
                  ),
                ),
                child: Image.asset('assets/bookmark.png'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: blackStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  info,
                  style: greyStyle.copyWith(fontSize: 10),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/rating-icon.png',
                      width: 13,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      rating.toString(),
                      style: boldStyle.copyWith(fontSize: 15),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> cardList = [
  const SizedBox(
    width: 23,
  ),
  const PopularCard(
    imageUrl: 'assets/image-1.png',
    title: 'One Piece',
    info: 'Last chapter update 1041',
    rating: 5.0,
  ),
  const PopularCard(
    imageUrl: 'assets/image-2.png',
    title: 'Attack On Titan',
    info: 'Last chapter update 139',
    rating: 4.9,
  ),
  const PopularCard(
    imageUrl: 'assets/image-3.png',
    title: 'Demon Slayer',
    info: 'Last chapter update 205',
    rating: 4.8,
  ),
];
