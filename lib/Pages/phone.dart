import 'package:flutter/material.dart';
import 'package:login_auth/Pages/Name.dart';

class phone extends StatelessWidget {
  const phone({Key? key}) : super(key: key);

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
                          color: Color(0xff4817BEF),
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
                        "Enter Phone Number",
                        style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
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
                      hintText: '- - - - - - - - - -',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),

                    ),
                  ),
                ),

                SizedBox(height: 15,),

                SizedBox(height: 60),

                GestureDetector(
                  onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const name()),
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
