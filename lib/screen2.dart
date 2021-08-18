import 'package:flutter/material.dart';
import 'package:interactivitydemo/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

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
              ElevatedButton(
                onPressed: () {
                  //code
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen3() ) );
                }, 
                child: Text('goto Screen3')
                )
            ],
          ),
        ),
      ),
    );
  }
}
