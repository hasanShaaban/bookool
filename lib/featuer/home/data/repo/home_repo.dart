import 'package:bookool/core/errors/failuer.dart';
import 'package:bookool/featuer/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuer, List<BookModel>>> fetchNewestSellerBooks();

  Future<Either<Failuer, List<BookModel>>> fetchFeaturedBooks();
}
