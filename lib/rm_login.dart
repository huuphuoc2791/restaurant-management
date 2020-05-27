import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'services/auth_services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  AuthService _authService = AuthService();
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text(
          "RESTAPP",
          style: GoogleFonts.roboto(
              textStyle: TextStyle(fontSize: 18, letterSpacing: 1)),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
        actions: <Widget>[

        ],
      ),
      body: _loading ? Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ) : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hello World"),
            SizedBox(height: 30,),
            FlatButton(
              color: Color(0xff465EFB),
              onPressed: () async {
                setState(() {
                  _loading = true;
                });
               dynamic result = await _authService.signOut();
               if(result == null){
                 print("error");
               }else{
                 print("success");
               }
               setState(() {
                 _loading = false;
               });
              },
              child: Text("Log Out"),
            )
          ],
        )
      ),
    );
  }
}
