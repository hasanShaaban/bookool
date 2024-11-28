import 'package:bookool/core/utils/styles.dart';
import 'package:bookool/featuer/home/presentation/views/widgets/book_actions.dart';
import 'package:bookool/featuer/home/presentation/views/widgets/book_rate.dart';
import 'package:bookool/featuer/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: const CustomBookImage(
            imageURL:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKnVp3abpKHU6VI-9TV3Rova8rKtVHp-b0Sg&s',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          'The Alchenist',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Paulo coelho',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center, rate: 0, count: 0,),
        const SizedBox(height: 37),
        const BookActions(),
      ],
    );
  }
}
