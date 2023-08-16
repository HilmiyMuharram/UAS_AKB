import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

class Detail extends StatelessWidget {
  final String namalapang;
  final String jambuka;
  final String harga;
  final String kontak;
  final String foto;
  final String rating;

  const Detail(
      {required this.namalapang,
      required this.jambuka,
      required this.harga,
      required this.kontak,
      required this.foto,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          namalapang,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.grey,
              child: Align(
                alignment: Alignment.center,
                child: Image.network(foto),
              ),
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Info Lapangan',
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            harga,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            kontak,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            jambuka,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40),
                          ),
                          Text(
                            rating,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 40),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
