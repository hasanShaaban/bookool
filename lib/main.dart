import 'package:bookool/constants.dart';
import 'package:bookool/core/utils/api_service.dart';
import 'package:bookool/core/utils/app_router.dart';
import 'package:bookool/featuer/home/data/repo/home_repo_impl.dart';
import 'package:bookool/featuer/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookool/featuer/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'featuer/home/data/repo/home_repo.dart';

void main() {
  runApp(const Booklook());
}
final HomeRepo homeRepo = HomeRepoImpl(ApiService(Dio()));
class Booklook extends StatelessWidget {
  const Booklook({super.key});

  @override
  Widget build(BuildContext  context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FeaturedBooksCubit(homeRepo)..fetchFeaturedBooks()),
        BlocProvider(create: (context) => NewestBooksCubit(homeRepo)..fetchNewestBooks())
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
