import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_auth/Pages/phone.dart';

class Name extends StatefulWidget {
  const Name({Key? key}) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
  @override
  Widget build(BuildContext context) {

    bool passwordvisible = true;

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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Sign up",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:28,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.045*ht,
                  ),

                  //First Name
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "First Name",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:14,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:0.0075*ht,
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,color: Color(0xFFA2A2A6))
                      ),
                      hintText: 'Your First Name',
                      hintStyle: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:12),

                    ),
                  ),
                  SizedBox(
                    height: 0.0225*ht,
                  ),

                  //Last Name
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Last Name",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:14,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:0.0075*ht,
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,color: Color(0xFFA2A2A6))
                      ),
                      hintText: 'Your Last Name',
                      hintStyle: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:12),

                    ),
                  ),
                  SizedBox(
                    height: 0.0225*ht,
                  ),


                  //E-mail
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:14,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:0.0075*ht,
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,color: Color(0xFFA2A2A6))
                      ),
                      prefixIcon: const Icon(Icons.mail),
                      hintText: 'Your Email',
                      hintStyle: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:12),

                    ),
                  ),
                  SizedBox(
                    height: 0.0225*ht,
                  ),

                  //Phone Number
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Phone Number",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:14,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:0.0075*ht,
                  ),
                  TextField(
                    obscureText: false,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,color: Color(0xFFA2A2A6))
                      ),
                      prefixIcon: const Icon(Icons.call),
                      hintText: 'Your Phone NUmber',
                      hintStyle: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:12),

                    ),
                  ),
                  SizedBox(
                    height: 0.0225*ht,
                  ),


                  //Password
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Password",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:14,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.0075*ht,
                  ),
                  TextField(
                    obscureText: passwordvisible,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1,color: Color(0xFFA2A2A6))
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      hintText: 'Your Password',
                      hintStyle: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:12),

                      // suffixIcon: IconButton(
                      //   icon: Icon(
                      //       supasswordvisible? Icons.visibility : Icons.visibility_off
                      //   ),
                      //   onPressed: (){
                      //     setState((){
                      //       supasswordvisible=!supasswordvisible;
                      //     });
                      //   },
                      // ),


                    ),
                  ),
                  SizedBox(
                    height: 0.02125*ht,
                  ),


                  //POLICY TEXT
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          "By signing up you agree to our ",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:14,color: const Color(0xFF747980)),
                      ),
                      Text(
                          "Terms & Condition",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:14,color: const Color(0xFF312E49)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "and ",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:14,color: const Color(0xFF747980)),
                      ),
                      Text(
                        'Privacy Policy.',
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:14,color: const Color(0xFF312E49)),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 0.055*ht,
                  ),

                  //CONTINUE BUTTON
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Phone()),);
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
