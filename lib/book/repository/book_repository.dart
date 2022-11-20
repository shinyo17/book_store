import 'package:book_store/book/model/params/get_book_list_params.dart';
import 'package:book_store/book/model/params/get_book_list_response.dart';
import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
part 'book_repository.g.dart';

@RestApi()
abstract class BookRepository {
  factory BookRepository(Dio dio, {String baseUrl}) = _BookRepository;

  @GET("/")
  Future<GetBookListResponse> getBookList({
    @Queries() GetBookListParams? getBookListParams = const GetBookListParams(),
  });
}
