import 'package:flutter/material.dart';

// ==fielfwiget==
formField(BuildContext context,String lable) {
  return Container(
    margin: EdgeInsets.only(bottom: 18),
    child: Row(
      children: [
        // textlable

        Container(
          width: MediaQuery.of(context).size.width / 3.5,
          margin: EdgeInsets.only(right: 10),
          // color: Colors.indigo,
          child: Text(
            lable,
            style: TextStyle(fontSize: 15),
          ),
        ),
        // formfiled

        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 17,
          child: TextFormField(
              // key: formGlobalKey,
              // controller: namavidio,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),

                // hintText: 'Judul video',
                // labelText: "Email",
                contentPadding: const EdgeInsets.only(left: 10),
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
                return 'jj';
              }),
        ),
      ],
    ),
  );
}
// ===