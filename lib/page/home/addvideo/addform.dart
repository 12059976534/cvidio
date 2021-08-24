import 'package:flutter/material.dart';

class AddForm extends StatefulWidget {
  const AddForm({Key? key}) : super(key: key);

  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  var email;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var _currentSelectedValue;

  _showMsg(msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    _scaffoldKey.currentState!.showSnackBar(snackBar);
  }

  // ====
  var _currencies = [
    "Food",
    "Transport",
    "Personal",
    "Shopping",
    "Medical",
    "Rent",
    "Movie",
    "Salary"
  ];
  // ===
  var _chosenValue;
  var _textpriveiw;

  @override
  Widget build(BuildContext context) {
    
    return Container(
        child: ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 5, right: 5,top: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 3),
                      child: Text("pilih video")),
                ],
              ),
              GestureDetector(
                onTap: () => print("berfungsi"),
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/add/Group 42.png"),
                          fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 3),
                      child: Text("pilih thumnail")),
                ],
              ),
              GestureDetector(
                onTap: () => print("berfungsi"),
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/add/Group 45.png"),
                          fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
        ),

        // ===
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                      child: Text('Nama video')),
                ],
              ),
              TextFormField(
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
                    email = emailValue;
                    return null;
                  }),
            ],
          ),
        ),

        // ===
        Container(
          margin: EdgeInsets.only(left: 5, right: 5),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(bottom: 5, top: 5),
                      child: Text('Deskripsi')),
                ],
              ),
              TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    hintText: 'Deskripsi',
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
                    email = emailValue;
                    return null;
                  }),
            ],
          ),
        ),

        // ====
       Container(
         margin: EdgeInsets.only(top: 20,left: 5,right: 5,bottom: 30),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:<Widget> [
            //==kategori==
          Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          width: MediaQuery.of(context).size.width/2.5,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: DropdownButton<String>(
              underline: SizedBox(),
              // focusColor: Colors.white,
              value: _chosenValue,
              elevation: 0,


              style: TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              items: <String>[
                'Android',
                'IOS',
                'Flutter',
                'Node',
                'Java',
                'Python',
                'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.black),
                  ),
                
                );
              }).toList(),
              hint:
                  (_textpriveiw == null) ? Text('Kategory') : Text("$_textpriveiw"),
                  
              onChanged: (value) {
                setState(() {
                  _chosenValue = value;
                  _textpriveiw = value;
                  print(value);
                });
              },
            ),
          ),
        ),
            // ==========
            // ==subkategori==
             Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          width: MediaQuery.of(context).size.width/2.5,
          
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(
            child: DropdownButton<String>(
              underline: SizedBox(),
              focusColor: Colors.white,
              value: _chosenValue,
              elevation: 0,
              style: TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              items: <String>[
                'Android',
                'IOS',
                'Flutter',
                'Node',
                'Java',
                'Python',
                'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.red),
                  ),
                );
              }).toList(),
              hint:
                  (_textpriveiw == null) ? Text('Sub-category',): Text("$_textpriveiw"),
              // elevation: 0,
              onChanged: (value) {
                setState(() {
                  _chosenValue = value;
                  _textpriveiw = value;
                  print(value);
                });
              },
            ),
          ),
        ),
            // ===============
           ],
         ),
       ),
        // =====
      

      Container(
        margin: EdgeInsets.only(bottom: 20,right: 5,left: 5),
        padding: EdgeInsets.all(19),
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text("Upload"),
        ),
        decoration: BoxDecoration(
          color: Colors.purple.shade900,
          borderRadius: BorderRadius.circular(5)
        ),
      )


      ],
    ));
  }
}
