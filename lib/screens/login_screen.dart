import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  static String id= 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfff0ad1e),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Container(
              height: MediaQuery.of(context).size.height*.2,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image(
                      image: AssetImage('images/icons/chaticon.png'),
                  ),
                  Positioned(
                    bottom:0,
                    child: Text(
                        'Chat Now',
                            style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 30
                            ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height:height*.1 ,
          ),
          CustomeTextField(
            hint: 'Enter Your Email',
            icon: Icons.email,
          ),
          SizedBox(
            height:height*.02 ,
          ),
          CustomeTextField(
              hint:'Enter Your Password',
            icon: Icons.lock,
          ),
          SizedBox(
            height:height*.05 ,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SignupScreen()));
              },
              color: Colors.black,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
            ),
          ),
          SizedBox(
            height:height*.05 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account ? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, SignupScreen.id);
                },
                child: Text('Signup',
                style: TextStyle(
                  fontSize: 16

                ),
                ),
              )
            ],
          )
        ],
    ),

    );




  }








}

class CustomeTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  CustomeTextField({required this.icon,required this.hint});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        cursorColor: Color(0xfff0ad1e),
        decoration: InputDecoration(
          hintText: hint,
          prefixIcon: Icon(
          icon,
          ),
          filled: true,
          fillColor: Color(0xfff6e29d),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.white
            )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                  color: Colors.white
              )
          ),
        ),
      ),
    );
  }
}
