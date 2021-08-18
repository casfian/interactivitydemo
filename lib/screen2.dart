import 'package:flutter/material.dart';
import 'package:interactivitydemo/screen3.dart';
import 'package:interactivitydemo/student.dart';

class Screen2 extends StatelessWidget {
  //2. create key pass
  Screen2({Key? key, required this.pass}) : super(key: key);
  //3.define pass sebagai string
  Student pass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Screen2'),
              //4.papar sini
              Text(pass.nama, style: TextStyle(fontSize: 40),),
              Text(pass.umur.toString(), style: TextStyle(fontSize: 40),),
              Text(pass.email, style: TextStyle(fontSize: 40),),

              ElevatedButton(
                  onPressed: () {
                    //code
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen3()));
                  },
                  child: Text('goto Screen3'))
            ],
          ),
        ),
      ),
    );
  }
}
