import 'package:flutter/material.dart';
import 'package:interactivitydemo/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String myText = 'Hello Kuala Pilah';

  final myController = TextEditingController();
  final my2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactivity Form'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          //color: Colors.grey,
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                myText,
                style: TextStyle(fontSize: 40),
              ),
              TextField(
                controller: myController, //2. letak sini
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Masukkan nama',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: my2Controller, //2. letak sini
                decoration: InputDecoration(
                  prefixText: 'Umur: ',
                  border: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    //code saya
                    myText = myController.text +
                        ' ' +
                        my2Controller.text; //3. guna sini
                    setState(() {
                      //guna utk ubah kat screen
                    });
                  },
                  child: Text('Change Text')),
                  
              ElevatedButton(
                  onPressed: () {
                    //code
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Screen2()  )  );
                  },
                  child: Text('goto Screen2')),


            ],
          ),
        ),
      ),
    );
  }
}
