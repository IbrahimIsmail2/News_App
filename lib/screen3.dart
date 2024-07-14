import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 350 / 652,
              width: MediaQuery.of(context).size.width * 350 / 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/m.png"), fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 438 / 812,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "LONDON — Cryptocurrencies “have no intrinsic\n value” and people who invest in them should be \n prepared to lose all their money, Bank of England\n Governor Andrew Bailey said.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    " Digital currencies like bitcoin, ether and even dogecoin\n have been on a tear this year, reminding some\n investors of the 2017 crypto bubble in which bitcoin\n blasted toward \$20,000, only to sink as low as \$3,122\n a year later.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Asked at a press conference Thursday about the\n rising value of cryptocurrencies, Bailey said: “They\n have no intrinsic value. That doesn’t mean to say\n people don’t put value on them, because they can\n have extrinsic value. But they have no intrinsic value.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 400,
            child: Container(
              height: 150,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20)),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sunday, 9 May 2021\n',
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )),
                      Text(
                        'Crypto investors should be prepared to lose all their money, BOE governor says',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Published by Ryan Browne',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
          child: FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
            child: const Icon(Icons.heart_broken),
          ),
        ),
      ),
    );
  }
}
