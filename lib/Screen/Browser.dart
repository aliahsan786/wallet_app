// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Browser extends StatelessWidget {
  const Browser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Card(
                margin: const EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30)),
                  alignment: Alignment.center,
                  child: TextFormField(
                    cursorColor: Colors.purpleAccent,
                    decoration: InputDecoration(
                        hintText: 'Search or enter website url',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.black87),
                        prefixIcon: const Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                        ),
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New DApps',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (contex, index) => ListTile(
                        leading: const CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SURFNET ',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, mollis rutrum nibh. Vivamus vel dui in elit posuere condimentum id non dolor. ',
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
              Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'DeFi',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (contex, index) => ListTile(
                        leading: const CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SURFNET ',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, mollis rutrum nibh. Vivamus vel dui in elit posuere condimentum id non dolor. ',
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
              Container(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Smart Chain',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                    const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (contex, index) => ListTile(
                        leading: const CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.deepPurpleAccent,
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'SURFNET ',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.black),
                            ),
                            Text(
                              'Lorem ipsum dolor sit amet, mollis rutrum nibh. Vivamus vel dui in elit posuere condimentum id non dolor. ',
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
