import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {


  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black,),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Center(
            child: Text( "Hot Updates", style: TextStyle(color: Colors.red, fontSize: 23, fontWeight: FontWeight.bold),)),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              width: MediaQuery.of(context).size.width* 345 / 375,
              height: MediaQuery.of(context).size.height* 128 / 812,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
            image: const DecorationImage(
            image: AssetImage("assets/g.png"),
        fit: BoxFit.cover
    ),
    ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Monday, 10 May 2021", style: TextStyle(color: Colors.black,fontFamily: "nunito", fontSize: 13, fontWeight: FontWeight.bold,),),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
            child: Container(alignment: Alignment.centerLeft,
              child: Text("WHO classifies triple-mutant Covid variant from\n India as global health risk",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: "A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(
                        text: "Read More", style: TextStyle(color: Colors.blue)
                    )
                  ]
                ),

              )
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 9.0),
              child: Text("Published by Berkeley Lovelace Jr.", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: MediaQuery.of(context).size.width*350/300,
              height: MediaQuery.of(context).size.height*100/500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                image: DecorationImage(
                    image: AssetImage("assets/t.png"),
                    fit: BoxFit.cover
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text("Sunday, 9 May 2021", style: TextStyle(color: Colors.black,fontFamily: "nunito", fontSize: 13, fontWeight: FontWeight.bold,),),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(alignment: Alignment.centerLeft,
              child: Text("What to do if you're planning or attending a\n wedding during the pandemic",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                      text: "They had the artsy, rustic venue, the tailored dress and/n a guest list including about 150 of their closest friends/n and family. But the pandemic had other plans, forcing/n Carly Chalmers and Mitchell Gauvin to make a difficult/n decision about their wedding...", style: TextStyle(color: Colors.black,fontSize: 16, fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                            text: "Read More", style: TextStyle(color: Colors.blue)
                        )
                      ]
                  ),

                )
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 9.0),
              child: Text("Published by Kristen Rogers", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
            ),
          ),




        ],
      ),
    );
  }
}

