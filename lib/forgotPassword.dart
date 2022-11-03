import 'package:flutter/material.dart';

class forgotpassword extends StatelessWidget {
  const forgotpassword({Key? key}) : super(key: key);
  static const String _title = 'Women Safety App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const forgotpasswordwidget(),
      ),
    );
  }
}

class forgotpasswordwidget extends StatefulWidget {
  const forgotpasswordwidget({Key? key}) : super(key: key);

  @override
  State<forgotpasswordwidget> createState() => _forgotpasswordwidgetState();
}

class _forgotpasswordwidgetState extends State<forgotpasswordwidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
               child: TextField(
               obscureText: true,
                 decoration: const InputDecoration(
                   border: OutlineInputBorder(),
                   labelText: 'Enter Your Email',
        ),
      ),
    ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  forgotpassword()),
                );
                //forgot password screen
              },
              child: const Text('Send OTP',),
            ),
   ],
    ));
  }
}

