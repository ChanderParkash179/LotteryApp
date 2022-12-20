// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class LotterApp extends StatefulWidget {
  const LotterApp({super.key});

  @override
  State<LotterApp> createState() => _LotterAppState();
}

class _LotterAppState extends State<LotterApp> {
  var appTitle = 'LOTTERY APP';
  num luckyNumber = 7;
  var rand = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
          title: Text(
            appTitle.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LOTTERY LUCKY NUMBER IS : \n$luckyNumber',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: (luckyNumber == rand)
                    ? Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(children: [
                          Icon(
                            CupertinoIcons.home,
                            color: Colors.green,
                            size: 40,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Congratulations You Won! \nYou\'re Lotter Number is: \n\n$rand',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Icon(
                              CupertinoIcons.exclamationmark,
                              color: Colors.red,
                              size: 40,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Sorry Better Luck For Next Time : \n\n$rand',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              rand = Random().nextInt(10);
            });
          },
          child: Icon(CupertinoIcons.refresh),
        ),
      ),
    );
  }
}
