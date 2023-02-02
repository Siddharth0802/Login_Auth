import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Phone extends StatelessWidget {
  const Phone({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    var ht = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 0.02125*ht,
                  ),
                  GestureDetector(
                    onTap: (){Navigator.pop(context);},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.arrow_back,color: Color(0xFF667085),),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 0.0225*ht,
                  ),

                  //VERIFY NUMBER TEXT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Verify Your Number",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:28,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.01*ht,
                  ),

                  //SENT 6 DIGIT CODE TEXT
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "We,ve sent a 6-digit confirmation code to",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:14,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "your number. Make sure you enter",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:14,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "correct code.",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:14,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),

                  SizedBox(
                    height:0.06*ht,
                  ),

                  //Code






                  SizedBox(
                    height: 0.0925*ht,
                  ),



                  //CONTINUE BUTTON
                  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffB4AAF2),
                      ),
                      child: Center(
                          child: Text("Continue",
                            style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:14,color: Colors.white),
                          )
                      ),
                    ),
                  ),

                  SizedBox(height: 0.04*ht,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already signed up ?",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:12,color: const Color(0xff747980)),
                      ),
                      const SizedBox(width: 4,),
                      GestureDetector(
                        onTap: (){Navigator.pop(context);},
                        child: Text(
                          "Login",
                          style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:12,color: const Color(0xff2805FF)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
