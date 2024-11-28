import 'package:bookool/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start, required this.rate, required this.count});
  final MainAxisAlignment mainAxisAlignment;


  final int rate;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F), size: 16),
        const SizedBox(width: 6),
        Text(
          '$rate',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            '$count',
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
