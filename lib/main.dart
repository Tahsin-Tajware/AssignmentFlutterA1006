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
    Quote(text: 'আরণ্যক', author: '-বিভূতিভূষণ বন্দ্যোপাধ্যায়', rating: 3.8, ratingcount: 4500, image: 'Images/book3.png', description: 'Aranyak is a simple and uncomplicated story. The protagonist Satyacharan has gone to an estate in Bhagalpur after getting a job of a manager. Initially his urban lifestyle might have revolted against the lonely jungle life but gradually nature hypnotized Satyacharan. Gradually he can not even resist a moments absence from the forest. Satyacharan and his partner Jugalprasad, a perfect match to the nature-loving soul of Satyacharan decorated the forest by planting many rare species of herbs and saplings. But Satyacharan is an estate manager. He has to destroy this creation of the forest-Goddess against his own will and distribute it amongst the local people. Age old gigantic trees as well as plants and herbs of rare species are getting destroyed with the sharp axes. This results in a deep feeling of guilt and sadness at the end of the novel.', price: 250),
    Quote(text: 'লালসালু', author: '-সৈয়দ ওয়ালিউল্লাহ', rating: 4.5, ratingcount: 6500, image: 'Images/book5.png', description: 'লালসালু সৈয়দ ওয়ালিউল্লাহ রচিত একটি উপন্যাস । উপন্যাসটি প্রথম প্রকাশিত হয় ১৯৪৮ সালে, দ্বিতীয় প্রকাশকাল ১৯৬০। এর পটভূমি ১৯৪০ কিংবা ১৯৫০ দশকের বাংলাদেশের গ্রামসমাজ হলেও এর প্রভাব বা বিস্তার কালোত্তীর্ণ । মূলত গ্রামীণ সমাজের সাধারণ মানুষের সরলতাকে কেন্দ্র করে ধর্মকে ব্যবসার উপাদানরূপে ব্যবহারের একটি নগ্ন চিত্র উপন্যাসটির মূল বিষয়। উপন্যাসটির রচনাকাল ১৯৪৮ সাল। এটি সৈয়দ ওয়ালিউল্লাহর প্রথম উপন্যাস। এটি পরে ইংরেজি ও ফরাসি ভাষায় অনুবাদ করা হয়।', price: 400),
    Quote(text: 'হিমু রিমান্ডে', author: '-হুমায়ূন আহমেদ', rating: 4, ratingcount: 36500, image: 'Images/book1.jpg', description: 'দুপুরে হেভি খাওয়াদাওয়া হলো। খালু সাহেব অফিসে যান নি। সবাই মিলে একসঙ্গে খাওয়া। শুনলাম কয়েকদিন ধরেই তিনি অফিসে যাচ্ছেন না। তাঁর যে শরীর খারাপ তাও না। তবে চোখে ভরসা হারানো দৃষ্টি। হড়বড় করে অকারণে কথা বলে যাচ্ছেন। পৃথিবীর সবচে’স্বদু খাবার কী- এই বিষয়ে দীর্ঘ বক্তৃতা দিলেন। তাঁর মতে হরিয়াল পাখির মাংস পৃথিবীর সবচে’স্বাদু খাবার। কারণ এই পাখি বটফল খায়, মাছ খায় না। হরিয়াল পাখি কীভাবে রান্না করতে হয় সেই রেসিপিও দিলেন।', price: 500),
    Quote(text: 'দলের নাম ব্ল্যাক ড্রাগন', author: '-মুহম্মদ জাফর ইকবাল', rating: 3.5, ratingcount: 36500, image: 'Images/book2.jpg', description: 'ভয়ঙ্কর দুষ্টু টিটন, ধীর-স্থির বৈজ্ঞানিক চঞ্চল আর মোটকা সাহিত্যিক অনু মিলে রাতুলের দল। ছুটির দিনগুলো আনন্দে আর অ্যাডভেঞ্চারে কাটানোর জন্য তারা একটা ক্লাব বানাল, নাম ব্ল্যাক ড্রাগন।চার ছেলের সাথে এসে জুটল দুটো মেয়ে, রাতুলের বোন মিথিলা (সারাক্ষন নাকি সুরে আম্মুকে ভাইয়ের নামে নালিশ করে) আর পাড়ায় নতুন আসা টুনি (যার চোখের দৃষ্টি বরফের মতন ঠান্ডা)। ব্ল্যাক ড্রাগন ক্লাবের আস্তানার জন্য তারা হাজির হল পোড়া বাড়ি মিশকাত মঞ্জিলে।', price: 350)

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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => NextPage(book: quote),
                  ),
                );
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
class NextPage extends StatelessWidget {
  final Quote book;

  NextPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage(book.image)),
              SizedBox(height: 20),
              Text(
                book.text,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.tealAccent[500],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                book.author,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              RatingBar(rating: book.rating, ratingCount: book.ratingcount),
              SizedBox(height: 10),
              Text(
                'Description: ${book.description}',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 5),
              Text(
                'Price: \$${book.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 25.0),

              ),
              SizedBox(height: 10.0),
              Container(
                child: DropdownMenuExample(),
              ),
              SizedBox(height: 18.0),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton.icon(

                  onPressed: (){
                    Navigator.pop(context);
                  },
                  label: const Text('Go Back '),
                  icon: Icon(Icons.arrow_back_ios_outlined),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(500)),
                    ),
                  ),

                ),
              ),
              SizedBox(height: 18.0),
              Container(
                alignment: Alignment.center,
                child: ElevatedButton.icon(
                  onPressed: (){
                  },
                  label: const Text(
                    'Buy Now 📚',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 24.0,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent,
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 70.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(500)),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


const List<String> list = <String>["Select Your Choose","eBook", "Pocket-sized edition"];

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      initialSelection: list.first,
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(value: value, label: value);
      }).toList(),
    );
  }
}

