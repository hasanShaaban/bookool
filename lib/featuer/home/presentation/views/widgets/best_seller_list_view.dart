import 'package:bookool/core/widgets/custom_error_widget.dart';
import 'package:bookool/featuer/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookool/featuer/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding:const EdgeInsets.symmetric(vertical: 10),
                child: BooksListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        }else if(state is NewestBooksFailuer){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const Center(child: LinearProgressIndicator());
        }
      },
    );
  }
}