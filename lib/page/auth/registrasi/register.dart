import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formGlobalKey = GlobalKey<FormState>();
  @override
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password_confirm = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(40, 40, 40, 0),
                    child: Text(
                      "Silahkan memeasukan  Email & Password atau buat akun terwlebih dahulu",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/auth/auth1.png"))),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Form(
                  key: formGlobalKey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            labelText: 'Email',
                            contentPadding:
                                const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            labelStyle: TextStyle(color: Colors.black54),
                            // prefixIcon: Icon(Icons.ac_unit),
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.black54,
                            ),
                            hintText: 'Enter Your Email',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (email) {
                            if (email == null || email.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: password,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            labelText: 'Password',
                            contentPadding:
                                const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            labelStyle: TextStyle(color: Colors.black54),
                            // prefixIcon: Icon(Icons.ac_unit),
                            suffixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.black54,
                            ),
                            hintText: 'Password',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (password) {
                            if (password == null || password.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: password_confirm,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            labelText: 'Password Confirm',
                            contentPadding:
                                const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            labelStyle: TextStyle(color: Colors.black54),
                            // prefixIcon: Icon(Icons.ac_unit),
                            suffixIcon: Icon(
                              Icons.vpn_key,
                              color: Colors.black54,
                            ),
                            hintText: 'Password Confirm',
                          ),
                          // The validator receives the text that the user has entered.
                          validator: (password_confirm) {
                            if (password_confirm == null ||
                                password_confirm.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
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
                                    MediaQuery.of(context).size.width,
                                    50), //////// HERE
                              ),
                              onPressed: () {
                                if (formGlobalKey.currentState!.validate()) {
                                  formGlobalKey.currentState!.save();
                                  // use the email provided here
                                }
                              },
                              child: Text('Buat akun'),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
