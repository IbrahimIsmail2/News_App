import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  bool isHealthyPressed = false;

  // Function to show the Bottom Sheet
  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Filter",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                        onPressed: () {
                          // Reset filter logic here
                          setState(() {
                            isHealthyPressed = false;
                          });
                          Navigator.pop(context); // Close the Bottom Sheet
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.restore_from_trash_rounded,
                              color: Colors.black,
                            ),
                            Text(
                              'Reset',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 15),
                  child: Text(
                    'Sort By',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(35)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Recommended',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "nunito"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(35)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Latest',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "nunito"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(35)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Most Viewed',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "nunito"),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(35)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Channel',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "nunito"),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(35)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Following',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: "nunito"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(30)),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 370,
              height: 50,
              padding: EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'COVID New Variant',
                    labelStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.close),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black12),
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                          child: TextButton.icon(
                            label: Text(
                              'Filter',
                              style: TextStyle(
                                  color: isHealthyPressed
                                      ? Colors.white
                                      : Colors.black,
                                  fontFamily: "nuito"),
                            ),
                            icon: Icon(Icons.light),
                            style: TextButton.styleFrom(
                              fixedSize: Size(90, 10),
                              backgroundColor: isHealthyPressed
                                  ? Colors.red
                                  : Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  side: BorderSide(color: Colors.grey)),
                            ),
                            onPressed: () {
                              setState(() {
                                isHealthyPressed = !isHealthyPressed;
                              });
                              // Show the Bottom Sheet
                              _showFilterBottomSheet();

                              Padding(
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [],
                                ),
                              );
                            },
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              fixedSize: Size(80, 10),
                              backgroundColor: isHealthyPressed
                                  ? Colors.red
                                  : Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  side: BorderSide(color: Colors.grey)),
                            ),
                            onPressed: () {
                              setState(() {
                                isHealthyPressed = !isHealthyPressed;
                              });
                            },
                            child: Text(
                              'Healthy',
                              style: TextStyle(
                                  color: isHealthyPressed
                                      ? Colors.white
                                      : Colors.black,
                                  fontFamily: "nuito"),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              fixedSize: Size(80, 10),
                              backgroundColor: isHealthyPressed
                                  ? Colors.red
                                  : Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  side: BorderSide(color: Colors.grey)),
                            ),
                            onPressed: () {
                              setState(() {
                                isHealthyPressed = !isHealthyPressed;
                              });
                            },
                            child: Text(
                              'Technology',
                              style: TextStyle(
                                  color: isHealthyPressed
                                      ? Colors.white
                                      : Colors.black,
                                  fontFamily: "nuito"),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              fixedSize: Size(80, 10),
                              backgroundColor: isHealthyPressed
                                  ? Colors.red
                                  : Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  side: BorderSide(color: Colors.grey)),
                            ),
                            onPressed: () {
                              setState(() {
                                isHealthyPressed = !isHealthyPressed;
                              });
                            },
                            child: Text(
                              'Finance',
                              style: TextStyle(
                                  color: isHealthyPressed
                                      ? Colors.white
                                      : Colors.black,
                                  fontFamily: "nuito"),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 4, 50, 50),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              fixedSize: Size(80, 10),
                              backgroundColor: isHealthyPressed
                                  ? Colors.red
                                  : Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  side: BorderSide(color: Colors.grey)),
                            ),
                            onPressed: () {
                              setState(() {
                                isHealthyPressed = !isHealthyPressed;
                              });
                            },
                            child: Text(
                              'ِArts',
                              style: TextStyle(
                                  color: isHealthyPressed
                                      ? Colors.white
                                      : Colors.black,
                                  fontFamily: "nuito"),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 4, 14, 50),
                        child: TextButton(
                            style: TextButton.styleFrom(
                              fixedSize: Size(80, 10),
                              backgroundColor: isHealthyPressed
                                  ? Colors.red
                                  : Colors.white12,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(19),
                                  side: BorderSide(color: Colors.grey)),
                            ),
                            onPressed: () {
                              setState(() {
                                isHealthyPressed = !isHealthyPressed;
                              });
                            },
                            child: Text(
                              'Sports',
                              style: TextStyle(
                                  color: isHealthyPressed
                                      ? Colors.white
                                      : Colors.black,
                                  fontFamily: "nuito"),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                //  crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About 11,130,000 results for ',
                    style: TextStyle(fontSize: 15, fontFamily: 'merriw'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'CoVID New Variant',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              SizedBox(
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/t.png"), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "What do is You're Planning or attending a\nwedding during the pandemic",
                            style: TextStyle(
                              fontFamily: "merriw",
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.055,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kristen Rogers",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Sunday, 9 May 2021",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "4 ways families can ease anxiety together",
                            style: TextStyle(
                              fontFamily: "merriw",
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.055,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Zain Korsgaard",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Sunday, 9 May 2021",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              SizedBox(
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/w.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Text(
                            "What to do if you're planning or attending a \n wedding during the pandemic",
                            style: TextStyle(
                              fontFamily: "merriw",
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.055,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kristen Rogers",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Sunday, 9 May 2021",
                              style: TextStyle(
                                fontFamily: "nunito",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
