import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:manga_app/constants/thame.dart';
import 'package:manga_app/screen/widgets/genre_list_item.dart';
import 'package:manga_app/screen/widgets/popular_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget appBar() {
      return Container(
        padding:
            const EdgeInsets.only(top: 10, left: 20, right: 25, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  margin: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/profile-picture.png'),
                    ),
                  ),
                ),
                Text(
                  'Hi, ',
                  style: blackStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Munawar!',
                  style: blackStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/notification.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your\nfavorite Manga',
              style: extraBoldStyle.copyWith(
                fontSize: 26,
                color: kprimeColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 15, top: 3, bottom: 2),
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      style: blackStyle.copyWith(),
                      decoration: InputDecoration(
                        icon: const Image(
                          image: AssetImage('assets/search-icon.png'),
                          width: 21,
                          height: 21,
                        ),
                        hintText: 'Search',
                        helperStyle: blackStyle.copyWith(),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 52,
                  width: 58,
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                    color: kBlackColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Image.asset('assets/filter-icon.png'),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget genre() {
      return Column(
        children: [
          SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: genreItem.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    genreItem[index],
                  ],
                );
              },
            ),
          ),
        ],
      );
    }

    Widget popularManga() {
      return Container(
        margin: const EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Popular Manga',
                style: boldStyle.copyWith(fontSize: 18, color: kprimeColor),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      cardList[index],
                    ],
                  );
                },
              ),
            )
          ],
        ),
      );
    }

    Widget continueReading() {
      return Container(
        height: 180,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.only(top: 15),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kprimeColor,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 120,
                width: 200,
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Continue Reading',
                      style: whiteStyle.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Shingeki no Kyojin, adalah sebuah seri manga shōnen asal Jepang.',
                      style: whiteStyle.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RatingBar.builder(
                          initialRating: 4.9,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: const EdgeInsets.only(right: 1),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {},
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          '4.9',
                          style: boldStyle.copyWith(color: kWhiteColor),
                        )
                      ],
                    ),
                    Container(
                      height: 5,
                      width: 175,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            height: 5,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 5,
                            width: 155,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 208,
              width: 128,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(right: 15, top: 15),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage('assets/image-2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 1,
              child: appBar(),
            ),
            Flexible(
              flex: 10,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    header(),
                    genre(),
                    popularManga(),
                    continueReading(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
