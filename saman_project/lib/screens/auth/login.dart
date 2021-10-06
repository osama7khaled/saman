import 'package:flutter/material.dart';
import 'package:saman_project/utils/constans.dart';
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Center(

child:

          ElevatedButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/bottom-nav');
          }, child: Text('go ',),style: ElevatedButton.styleFrom(
            primary: kPrimaryColor
          ),),

      )
      ,
    );
  }
}
