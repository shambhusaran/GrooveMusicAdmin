import 'package:flutter/material.dart';
import 'package:web_admin_panel/Controllers/admin_login_controller.dart';
import 'package:web_admin_panel/View/home_view.dart';
import 'package:web_admin_panel/View/login_view.dart';
import 'package:web_admin_panel/widget/upload_songs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginForm(),
      //home: UploadSongs(),

    );
  }
}


