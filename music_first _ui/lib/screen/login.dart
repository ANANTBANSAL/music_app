
import 'package:flutter/material.dart';
import 'package:mvp_music/utils/constants.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

  _sizedBox(double val)
  {
    return SizedBox(width:val );
  }
  Widget loginButton(String val,double size,String buttonText)
  {
    return Container(
        height: 45,
        width:350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.redAccent ,
        ),
        child:MaterialButton(
          elevation: 5,
          child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Image.network(val,height: 30,),
                _sizedBox(size),
                Text(buttonText,style:TextStyle(fontWeight:FontWeight.bold,),)
              ]
          ),
          onPressed: (){},
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('login',textAlign:TextAlign.center,),
      ),
      body: Container(
        color: Colors.white70,
        alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Login',textAlign:TextAlign.center ,style: TextStyle(fontWeight: FontWeight.bold,fontSize:50),),
            Divider(height: 50,),
            loginButton(constants.GOOGLE_LOGO,25,'Google Login'),
            Divider(height:5,),
            loginButton(constants.FACEBOOK_LOGO,25,'Facebook Login'),
          ],
        )
      ),
    );
  }
}
