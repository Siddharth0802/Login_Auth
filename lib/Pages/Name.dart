import 'package:flutter/material.dart';
import 'package:login_auth/Pages/Email.dart';
import 'package:login_auth/Pages/SingIn.dart';

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

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
                        "Name",
                        style:
                            TextStyle(fontSize: 25,color: Colors.white ,fontWeight: FontWeight.bold),
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
                            "We may store and send a verification",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "code to this number",
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
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
                        hintText: 'First Name',
                        hintStyle: TextStyle(color: Colors.white)



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
                        hintText: 'Last Name',
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),

                SizedBox(height: 50),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const email()),
                    );
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
                            TextStyle(color: Colors.white,fontSize: 17))),
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
