import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatefulWidget {
  final String title;
  const MyListTile({super.key, required this.title});

  @override
  State<MyListTile> createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
          leading: const CircleAvatar(
            radius: 22,
            backgroundColor: Colors.amber,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title.toString(),
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
              Text(
                'BNB Beacon Chain',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.grey),
              ),
            ],
          ),
          trailing: Switch(
              value: check,
              onChanged: (value) {
                setState(() {
                  check = value;
                });
              })),
    );
    ;
  }
}
