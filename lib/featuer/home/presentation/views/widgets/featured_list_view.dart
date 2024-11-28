import 'package:bookool/core/widgets/custom_error_widget.dart';
import 'package:bookool/featuer/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookool/featuer/home/presentation/views/widgets/featured_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatueredBooksListView extends StatelessWidget {
  const FeatueredBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {                      
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                itemCount: state.books.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:const EdgeInsets.only(right: 16),
                    child: CustomBookImage(imageURL: state.books[index].volumeInfo.imageLinks.thumbnail,),
                  );
                }),
          );
        }else if(state is FeaturedBooksFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
