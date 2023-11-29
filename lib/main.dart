import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class Quote {
  String text;
  String author;
  String image;
  double rating;
  int ratingcount;
  String description;
  double price;

  Quote({required this.text, required this.author, required this.image, required this.rating, required this.ratingcount, required this.description, required this.price,});
}
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'পদ্মানদীর মাঝি', author: '-মানিক বন্দ্যোপাধ্যায়', rating: 4.5, ratingcount: 5500, image: 'Images/book4.png', description: 'আধুনিক বাংলা উপন্যাসের বিশাল আঙ্গিনায় নদীজীবী মানুষদের নিয়ে রচিত প্রথম উপন্যাস পদ্মা নদীর মাঝি। ১৯৩৬ সালে এটি প্রকাশিত হয়। মানিক বন্দ্যোপাধ্যায়ের গ্রন্থসমূহের মধ্যে এটিই সর্বাধিক অনূদিত গ্রন্থ। উপন্যাসটিতে লেখক জেলে-জীবন ও জল-জীবন অঙ্কনে এবং চরিত্রচিত্রণে অপূর্ব মুন্সিয়ানার পরিচয় রেখেছেন।', price: 600),

  ];

  Widget quotetemplate(quote) {
    return Card(
      color: Colors.blueGrey[200],
      elevation: 20.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Image(image: AssetImage(quote.image)),
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  flex: 8,
                  child: Container(
                    height: 120.0,
                    child: Column(
                      children: <Widget>[
                        Text(
                          quote.text,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.tealAccent[500],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          quote.author,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.red[900],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12.0),
                        RatingBar(rating: quote.rating, ratingCount: quote.ratingcount),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.0),
            FilledButton.icon(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black87),
              ),
              onPressed: () {
              },
              icon: Icon(Icons.shopping_cart_sharp),
              label: Text('📚 Buy Now'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('📚📚️  Book Shop  📚📚️'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((quote) => quotetemplate(quote)).toList(),
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final double rating;
  final double size;
  int? ratingCount;

  RatingBar({required this.rating, this.ratingCount, this.size = 18});

  @override
  Widget build(BuildContext context) {
    List<Widget> _starList = [];
    int realN = rating.floor();
    int partN = ((rating - realN) * 10).ceil();

    for (int i = 0; i < 5; i++) {
      if (i < realN) {
        _starList.add(Icon(Icons.star, color: Colors.yellow, size: size));
      } else if (i == realN) {
        _starList.add(SizedBox(
          height: size,
          width: size,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Icon(Icons.star, color: Colors.blueGrey, size: size),
            ],
          ),
        ));
      } else {
        _starList.add(Icon(Icons.star, color: Colors.grey, size: size));
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Rating: ',
          style: TextStyle(
            fontSize: size * 0.8,
            fontWeight: FontWeight.w900,
            color: Colors.blueGrey[700],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: _starList,
        ),
      ],
    );
  }
}

