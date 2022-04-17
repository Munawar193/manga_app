import 'package:flutter/material.dart';
import 'package:manga_app/constants/thame.dart';

List<Widget> genreItem = const [
  SizedBox(
    width: 25,
  ),
  GenreItem(
    text: 'Complete',
    isSelect: true,
  ),
  GenreItem(
    text: 'Ongoing',
  ),
  GenreItem(
    text: 'Action',
  ),
  GenreItem(
    text: 'Adventure',
  ),
  GenreItem(
    text: 'Comedy',
  ),
  GenreItem(
    text: 'Drama',
  ),
];

var isSet = false;

class GenreItem extends StatelessWidget {
  final String text;
  final bool? isSelect;
  const GenreItem({
    Key? key,
    required this.text,
    this.isSelect = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: Text(text,
          style:
              isSelect == isSet ? greyStyle.copyWith() : blackStyle.copyWith()),
    );
  }
}
