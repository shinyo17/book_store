import 'package:book_store/book/model/book_model.dart';
import 'package:book_store/book/model/params/get_book_list_params.dart';
import 'package:book_store/book/model/params/get_book_list_response.dart';
import 'package:book_store/book/repository/book_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BookProvider extends ChangeNotifier {
  List<BookModel> books = [];

  void getBooks(String q) async {
    books.clear();

    final bookRepository = BookRepository(Dio(),
        baseUrl: "https://www.googleapis.com/books/v1/volumes");

    GetBookListParams params =
        GetBookListParams(q: q, startIndex: 0, maxResults: 40);
    GetBookListResponse res =
        await bookRepository.getBookList(getBookListParams: params);
    List<BookModel> items = res.items;

    books = items;

    notifyListeners();
  }
}
