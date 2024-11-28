import 'package:bookool/featuer/home/presentation/views/widgets/books_details_section.dart';
import 'package:bookool/featuer/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookool/featuer/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 10),
                BooksDetailsSection(),
                Expanded(child: SizedBox(height: 40)),
                SimilarBooksSections(),
                SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
