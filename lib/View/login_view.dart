import 'dart:html';

import 'package:flutter/material.dart';
import 'package:web_admin_panel/Controllers/admin_login_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:web_admin_panel/widget/upload_songs_page.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController.addListener(() {
      final String text = _emailController.text;
      _emailController.value = _emailController.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });

    _passwordController.addListener(() {
      final String text = _passwordController.text;
    _passwordController.value = _passwordController.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
//     return Container();
//   }
// }
//
//
// class LoginForm extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          //color: Colors.purple,
        image: DecorationImage(
        image: AssetImage('images/gmiloginimg.jpg'),
    fit: BoxFit.fill,
        ),
        ),



        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),

            ),

            height: 500,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  const SizedBox(height: 10,),
                 // Container(child: Center(child: Image.asset('images/Group 3.png'))),
                  const SizedBox(height: 60,),
                  const Center(child: Text("Groove Music", style: TextStyle(fontSize:40, color: Colors.black87, fontWeight: FontWeight.bold),),),
                  //const Center(child: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),),
                  const SizedBox(height: 50,),

                  TextFieldForLogin(hintText: "Email or Phone number",
                  textField: TextFormField(
                    controller: _emailController,

                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      hintText: "Email or Phone Number",
                      border: InputBorder.none,

                    ),
                  ),),
                  const SizedBox(height: 20,),
                  TextFieldForLogin(hintText: "Password", textField:  TextFormField(
                    controller: _passwordController,

                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,

                    ),
                  ),
                  ),
                  const SizedBox(height: 20,),

                  const Text("Forgot Password?", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),),
                  const SizedBox(height: 20,),

                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 45,
                          child: TextButton(

                            onPressed: (){
                              String result =  AdminLoginController().loginAdmin(_emailController.text, _passwordController.text).toString();
                              if(result=="account is not used before"){
                                Fluttertoast.showToast(msg: "This email is not verified", toastLength: Toast.LENGTH_SHORT);

                              }
                              else if(result == "false"){

                                Fluttertoast.showToast(msg: "Incorrect Password", toastLength: Toast.LENGTH_SHORT);

                              }
                              else{
                                Navigator.push(context, MaterialPageRoute(builder: (context) => UploadSongs(),),);

                              }

                            }, child: const Text("Login", ),
                            style: TextButton.styleFrom(

                              backgroundColor: Colors.black87,
                              primary: Colors.white,
                            ),


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
      ),

    );
  }
}


class TextFieldForLogin extends StatelessWidget {
  final String hintText;
  final TextFormField textField;

  TextFieldForLogin({required this.hintText, required this.textField});
  @override
  Widget build(BuildContext context) {
    return    Container(

      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const <BoxShadow>[BoxShadow(
            color: Colors.black54,
            blurRadius: 6.0,
            offset: Offset(5.0, 5.0),

        )
        ],
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
        // border: Border.all(
        //   color: Colors.black,
        //   width: 1.0,
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: textField,
      ),
    );
  }
}

