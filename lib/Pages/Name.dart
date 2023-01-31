import 'package:flutter/material.dart';
import 'package:login_auth/Pages/Email.dart';
import 'package:login_auth/Pages/SingIn.dart';

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.close,
                      color: Color(0xff4817BEF),
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
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
                        style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),
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
                      style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'First Name',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)



                  ),
                ),
              ),

              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:5),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: 'Last Name',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)
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
                    color: Color(0xff4817BEF),
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
    );
  }
}
