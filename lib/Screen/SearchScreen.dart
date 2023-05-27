import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/Screen/MyListTile.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List string = ['BNB', 'BTC', 'ETH', 'ADA', 'DOT', 'SOL', 'DOGE', 'AVAX'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Search',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
          ),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        ),
        body: ListView.builder(
            itemCount: string.length,
            shrinkWrap: true,
            itemBuilder: (contex, index) => MyListTile(
                  title: string[index],
                )));
  }
}
