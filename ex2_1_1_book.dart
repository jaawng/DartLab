class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print('Title: $title');
    print('Author: $author');
    print('Price: $price');
  }
}

void main() {
  var book1 = Book('Summarizing techniques', 'วรารัชต์ มหามนตรี', 225.0);
  var book2 = Book("Harry Potter", 'J.K. Rowling', 350.0);

  book1.showDetail();
  book2.showDetail();
}
