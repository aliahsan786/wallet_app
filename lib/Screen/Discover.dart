// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});

  @override
  State<Discover> createState() => _DiscoverState();
}

enum currency { tokens, nfts }

class _DiscoverState extends State<Discover> {
  currency _selectedCurrency = currency.tokens;
  Color color = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purpleAccent,
        toolbarHeight: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: const BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        color: color),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending News',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: color),
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: color,
                      )
                    ],
                  ),
                  ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (contex, index) => Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      'assets/images/trend.PNG',
                                      scale: 2,
                                    )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ledger integrates with the \nCosmos Ecosystem ',
                                      maxLines: 2,
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'UNBLOCK Blockchain ',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: Colors.grey),
                                        ),
                                        // Text(
                                        //   '+0.48% ',
                                        //   style: GoogleFonts.poppins(
                                        //       fontWeight: FontWeight.w400,
                                        //       fontSize: 12,
                                        //       color: Colors.grey),
                                        // ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Staking',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_outlined,
                    color: color,
                  )
                ],
              ),
            ),
            ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (contex, index) => ListTile(
                      leading: const CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.amber,
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ADA ',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          Text(
                            'Cardano ',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey),
                          ),
                        ],
                      ),
                      trailing: Text(
                        'APR 4.34%',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}
