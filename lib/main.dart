import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: QuoteList(),
));


//Group1
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}
//Group1


//Group2
class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes =[
    Quote(author: 'Bill Watterson', text:'You know, Hobbes, some days even my lucky rocketship underpants dont help'),
    Quote(author: 'John Steinbeck',text:'And now that you dont have to be perfect, you can be good' ),
    Quote(author: 'Stephen Chbosky',text: 'Even if we dont have the power to choose where we come from, we can still choose where we go from there.'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
      children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
      }
      )).toList(),
    ),
    );
  }
}
//Group2


