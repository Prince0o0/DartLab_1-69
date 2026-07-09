class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print('Book name: $title');
    print('Author: $author');
    print('Price: $price Baht');
    print('------------------------');
  }
}

void main() {
  Book book1 = Book('บ้านวิกลคนประหลาด', 'Uketsu (อุเก็ตสึ)', 265.0);

  Book book2 = Book('แฮรี่ พ็อตเตอร์ กับศิลาอาถรรพ์', 'J.K. Rowling (เจ.เค. โรว์ลิ่ง)', 595.0);

  book1.showDetail();
  book2.showDetail();
}