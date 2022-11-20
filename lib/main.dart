import 'package:book_store/book/provider/book_provider.dart';
import 'package:book_store/book/view/book_home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(_App());
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BookProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BookHomePage(),
      ),
    );
  }
}
