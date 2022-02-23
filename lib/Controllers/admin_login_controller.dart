import 'package:http/http.dart' as http;
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:flutter/material.dart';
class AdminLoginController{

Future<String?> loginAdmin(String email, String password) async{
    var url = "https://groovemusicnepal.000webhostapp.com/login/signin.php";
    var data = {
      "email": email,
      "password": password,
    };
    http.Response res = await http.post(Uri.parse(url),
        body: data);

    if ((res.body)=="account is not used before"){
      //Fluttertoast.showToast(msg: "This email is not verified", toastLength: Toast.LENGTH_SHORT);
      return "account is not used before";

    }
    else{
      if((res.body)=="false"){
        //Fluttertoast.showToast(msg: "Incorrect Password", toastLength: Toast.LENGTH_SHORT);
          return "false";

      }
      else{
        return "true";
        //Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBarPage(),),);
      }
    }





  }

}