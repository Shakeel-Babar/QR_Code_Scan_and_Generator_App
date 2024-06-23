import 'package:flutter/material.dart';
import 'package:qr_code_scanner_generator/generate_qr_code.dart';
import 'package:qr_code_scanner_generator/scan_qr_code.dart';


class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('QR Code Scanner and Generator')),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {
              setState(() {

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScanQRCode()));

              });
            }, child: Text('Scan Qr Code')),
            SizedBox(height: 40),
            ElevatedButton(onPressed: () {
              setState(() {

                Navigator.of(context).push(MaterialPageRoute(builder: (context) => GenerateQRcode(),));

              });
            }, child: Text('Generate QR Code''')),
          ],
        ),
      ),
    );
  }
}
