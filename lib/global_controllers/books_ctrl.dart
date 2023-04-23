import 'package:book_app/functions/load_book_json.dart';
import 'package:book_app/models/books/book_model.dart';
import 'package:get/get.dart';

class BookCtrl extends GetxService {
  List<Book> booksList = <Book>[];

  @override
  void onReady() {
    loadBooks();
    super.onReady();
  }

  Future<void> loadBooks() async {
    final booksFiles = await loadBookFiles();

    if (booksFiles.isEmpty) return;
    for (var bookfile in booksFiles) {
      final book = await loadBookJson(bookfile);

      if (book != null && book["items"] != null) {
        booksList.add(Book.fetch(book["items"] as List<dynamic>));
      }
    }
  }
}
