import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({ Key? key }) : super(key: key);

  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        Container(
          child: Card(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(),
                    Container(
                      child: TextFormField(
                  // key: formGlobalKey,
                  // controller: namavidio,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    hintText: 'Judul video',
                    // labelText: "Email",
                    contentPadding: const EdgeInsets.only(left: 120),
                    labelStyle: TextStyle(color: Colors.black54),
                    // prefixIcon: Icon(Icons.ac_unit),
                    // suffixIcon: Icon(
                    //   Icons.email,
                    //   color: Colors.black54,
                    // ),
                  ),
                  validator: (emailValue) {
                    if (emailValue!.isEmpty) {
                      return 'Please enter your email';
                    }
                    // email = emailValue;
                    return null;
                  }) ,
                    )
                  ],
                )
              ],
            ),
          ),
        )


      ],
      
    );
  }
}