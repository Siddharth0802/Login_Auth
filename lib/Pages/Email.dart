import 'package:flutter/material.dart';
import 'package:login_auth/Pages/SingIn.dart';
import 'package:login_auth/Pages/Email.dart';

class email extends StatelessWidget {
  const email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121124),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: GestureDetector(
                        onTap: () {Navigator.pop(context);},
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Email",
                        style:
                        TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 15,
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "We'll notify you of important changes, new",
                        style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "features and benifits",
                        style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold,fontSize: 17),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:5),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: false,
                    decoration: InputDecoration(
                        fillColor: Color(0xff121124),
                        filled: true,
                        hintText: 'Email Address',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        prefixIcon: Icon(Icons.email,color: Colors.blue,),



                    ),
                  ),
                ),

                SizedBox(height: 15,),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:5),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: false,
                    decoration: InputDecoration(
                        fillColor: Color(0xff121124),
                        filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                        prefixIcon: Icon(Icons.key,color: Colors.blue,),



                    ),
                  ),
                ),

                SizedBox(height: 60),

                GestureDetector(
                  onTap: () {
                  },
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff0264FD),
                    ),
                    child: Center(
                        child: Text("Continue",
                            style:
                            TextStyle(color: Colors.white, fontSize: 16))),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
