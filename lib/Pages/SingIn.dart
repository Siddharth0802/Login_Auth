import 'package:flutter/material.dart';
import 'package:login_auth/Pages/Name.dart';
import 'package:login_auth/Pages/phone.dart';

class signIn extends StatelessWidget {
  const signIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ht = MediaQuery.of(context).size.height;
    var wt = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff121124),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Icon(
                  Icons.person,
                  size: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome Back!!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: false,
                    decoration: InputDecoration(

                        fillColor: Color(0xff121124),
                        filled: true,
                        prefixIcon: Icon(Icons.email,color: Colors.blue,),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.white)
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Color(0xff121124),
                        filled: true,
                        prefixIcon: Icon(Icons.key,color: Colors.blue,),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xff0264FD),
                    ),
                    child: Center(
                        child: Text("Login",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16))),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Divider(thickness: 1.5,
                            color: Colors.grey[400],
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              'Not A Member?',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 5,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const phone()),
                                );
                              },
                              child: Text(
                                "Register now",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Divider(thickness: 1.5,
                            color: Colors.grey[400],
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[200],
                        ),
                        child:Image.asset(
                          "assets/google.png",
                          height:40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
