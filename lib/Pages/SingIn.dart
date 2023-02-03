import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_auth/Pages/Dashboard.dart';
import 'package:login_auth/Pages/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override

  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool _passwordvisible = true;

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
                    height: 0.04125*ht,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:28,color: const Color(0xff312E49)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.045*ht,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "E-mail",
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
                    obscureText: _passwordvisible,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,color: Color(0xFFA2A2A6))
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'Your Password',
                        hintStyle: GoogleFonts.questrial(fontWeight:FontWeight.w500,fontSize:12),

                      suffixIcon: IconButton(
                          icon: Icon(
                            _passwordvisible? Icons.visibility : Icons.visibility_off
                          ),
                        onPressed: (){
                          setState((){
                            _passwordvisible=!_passwordvisible;
                          });
                        },
                      ),


                    ),
                  ),

                  SizedBox(
                    height: 0.12125*ht,
                  ),


                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Dashboard()),);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xffB4AAF2),
                      ),
                      child: Center(
                          child: Text("Login",
                            style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:14),
                          )
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 0.075*ht,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Expanded(
                            child: Divider(thickness: 2,

                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            'or continue with',
                            style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:14,color: const Color(0xff747980)),
                          ),
                        ),
                        const Expanded(
                            child: Divider(thickness: 2,
                              color: Color(0xFFCDCED1),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.025*ht,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFFEBE9F1)),
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                          ),
                          child:Image.asset(
                            "assets/google.png",
                            height:40,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Don't have an account?",
                      style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:12,color: const Color(0xff747980)),
                    ),
                    const SizedBox(width: 4,),
                    GestureDetector(
                      onTap: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Signup()),);},
                      child: Text(
                        "Signup",
                        style: GoogleFonts.questrial(fontWeight:FontWeight.w600,fontSize:12,color: const Color(0xff2805FF)),
                      ),
                    ),
                  ],
                  ),

                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
