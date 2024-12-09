import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetails extends StatefulWidget {

  final String name;
  final String image;
  final String description;


  const RecipeDetails({super.key,required this.name,required this.image,required this.description});

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {

    //for responsive text size based on screen width
    var screenWidth = MediaQuery.sizeOf(context).width;
    var fontSize = screenWidth > 600 ? 30.0 : 20.0;


    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.redAccent,
        title: Text(
          "Recipe Details",
          style: GoogleFonts.acme(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/${widget.image}",
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 3,
                  fit: BoxFit.fitWidth,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.redAccent,
                  child: Center(


                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.name,

                        style: GoogleFonts.acme(fontSize: fontSize, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    widget.description,textAlign: TextAlign.justify,
                    style: GoogleFonts.acme(fontSize: fontSize,),
                  ),
                ))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
