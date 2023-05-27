// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet_app/Screen/About.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text(
                'Settings',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.wallet),
              minLeadingWidth: 20,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallets',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  Text(
                    'Main Wallet: 1',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode_outlined),
              minLeadingWidth: 20,
              title: Text(
                'Dark Mode',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
              trailing: Switch(
                  activeColor: Colors.black,
                  focusColor: Colors.black,
                  value: _switch,
                  onChanged: (value) {
                    setState(() {
                      _switch = value;
                    });
                  }),
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.currency_exchange_outlined),
              minLeadingWidth: 20,
              title: Text(
                'Price Alerts',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person_outline),
              minLeadingWidth: 20,
              title: Text(
                'Contacts',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.qr_code_outlined),
              minLeadingWidth: 20,
              title: Text(
                'Scan QR code',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.join_right_outlined),
              minLeadingWidth: 20,
              title: Text(
                'Wallet Connect',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.settings_suggest_sharp),
              minLeadingWidth: 20,
              title: Text(
                'Prefernces',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.lock_outlined),
              minLeadingWidth: 20,
              title: Text(
                'Security',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.notifications_none_sharp),
              minLeadingWidth: 20,
              title: Text(
                'Push Notification',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
              leading: const Icon(Icons.help_outline_outlined),
              minLeadingWidth: 20,
              title: Text(
                'Help Center',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const About()));
              },
              leading: const Icon(Icons.help),
              minLeadingWidth: 20,
              title: Text(
                'About',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
