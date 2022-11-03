import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({ Key  }) : super(key: null);

  @override
  _SignupState createState() => _SignupState();
}
final _userfnameController = TextEditingController();
final _userlnameController = TextEditingController();
final _userEmailController = TextEditingController();
final _userPasswordController = TextEditingController();
class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding:EdgeInsets.symmetric(horizontal: 15,vertical: 20),
            child: Column(
              children: [
                Text("Welcome",style: TextStyle(fontSize: 30, color: Colors.black)),
                Text("Sign Up",style: TextStyle(fontSize: 30, color: Colors.red)),

                SizedBox(height: 15,),
                TextField(
                  controller: _userfnameController,
                  decoration: InputDecoration(
                      labelText: "First Name",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                   controller: _userlnameController,
                  decoration: InputDecoration(
                      labelText: "Last Name",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),

                ),
                SizedBox(height: 15,),
                TextField(
                    controller:_userEmailController,
                  decoration: InputDecoration(
                      labelText: "Email ID",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: _userPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 15,color: Colors.grey.shade400),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                  ),
                ),
                SizedBox(height: 15,),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () {
                    print(_userfnameController.text);
                    print(_userlnameController.text);
                    print(_userEmailController.text);
                    print(_userPasswordController.text);
                  },
                  child: Text('Register'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}