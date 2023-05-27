// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Icon(
              Icons.help,
              color: Colors.black,
            ),
            minLeadingWidth: 20,
            title: Text(
              'About',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.spa_rounded,
              color: Colors.black,
            ),
            minLeadingWidth: 20,
            title: Text(
              'Twitter',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.telegram_outlined,
              color: Colors.black,
            ),
            minLeadingWidth: 20,
            title: Text(
              'Telegram',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.facebook_outlined,
              color: Colors.black,
            ),
            minLeadingWidth: 20,
            title: Text(
              'Facebook',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.reddit_outlined,
              color: Colors.black,
            ),
            minLeadingWidth: 20,
            title: Text(
              'Reddit',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.ondemand_video,
              color: Colors.black,
            ),
            minLeadingWidth: 20,
            title: Text(
              'Youtube',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
