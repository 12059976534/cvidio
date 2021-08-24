import 'dart:convert';
import 'package:caivideo/page/home/mainpage.dart';
import 'package:caivideo/service/LoginService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:shared_preferences/shared_preferences.dart';

class SiginHome extends StatefulWidget {
  const SiginHome({Key? key}) : super(key: key);

  @override
  _SiginHomeState createState() => _SiginHomeState();
}

class _SiginHomeState extends State<SiginHome> {
  bool _isLoading = false;
  final _formKey = GlobalKey<FormState>();
  var email, password;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _secureText = true;

  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  _showMsg(msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    _scaffoldKey.currentState!.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        child: ListView(
          children: <Widget>[
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  //  text
                  Container(
                    padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
                    child: Text(
                      "Silahkan memeasukan  Email & Password atau buat akun terwlebih dahulu",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  //  image
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/image/login/sign in.png"))),
                  ),
                  // textfield
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 25),
                          child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),

                                hintText: 'Masukkan email',
                                labelText: "Email",
                                contentPadding:
                                    const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                labelStyle: TextStyle(color: Colors.black54),
                                // prefixIcon: Icon(Icons.ac_unit),
                                suffixIcon: Icon(
                                  Icons.email,
                                  color: Colors.black54,
                                ),
                              ),
                              validator: (emailValue) {
                                if (emailValue!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                email = emailValue;
                                return null;
                              }),
                        ),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: _secureText,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),

                              hintText: 'Masukkan password',
                              labelText: "Password",
                              contentPadding:
                                  const EdgeInsets.fromLTRB(30, 0, 0, 0),
                              labelStyle: TextStyle(color: Colors.black54),
                              // prefixIcon: Icon(Icons.ac_unit),
                              suffixIcon: IconButton(
                                onPressed: showHide,
                                icon: Icon(_secureText
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                            validator: (passwordValue) {
                              if (passwordValue!.isEmpty) {
                                return 'Please enter your password';
                              }
                              password = passwordValue;
                              return null;
                            }),
                      ],
                    ),
                  ),
                  // message

                  // button checkout
                  Container(
                    // color: Colors.amber,
                    margin: EdgeInsets.only(left: 3, right: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          // height: 10,
                          // color: Colors.amberAccent,
                          child: CheckboxListTile(
                            // title: const Text('Animate Slowly'),
                            title: Text("ingat saya"),
                            value: timeDilation != 1.0,
                            controlAffinity: ListTileControlAffinity.leading,
                            onChanged: (bool? value) {
                              setState(() {
                                timeDilation = value! ? 10.0 : 1.0;
                              });
                            },
                            // secondary: const Icon(Icons.hourglass_empty),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => 0,
                          child: Container(
                            margin: EdgeInsets.only(right: 30),
                            child: Text("Lupa Sandi"),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple.shade900,
                      onPrimary: Colors.white,
                      shadowColor: Colors.purple.shade900,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      minimumSize: Size(
                          MediaQuery.of(context).size.width, 50), //////// HERE
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _login();
                        // use the email provided here
                      }
                    },
                    child: Text('LOGIN'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _login() async {
    setState(() {
      _isLoading = true;
    });
    var data = {'email': email, 'password': password};
    var res = await Network().auth(data, '/api/auth/login');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', json.encode(body['token']));
      localStorage.setString('user', json.encode(body['user']));
      Navigator.pushReplacement(
        context,
        new MaterialPageRoute(builder: (context) => MainPage()),
      );
    } else {
      _showMsg(body['message']);
    }

    setState(() {
      _isLoading = false;
    });
  }
}
