import 'package:flutter/material.dart';
import 'package:mvp_music/utils/constants.dart';
import 'login.dart';
class MusicSplash extends StatefulWidget {
  @override
  _MusicSplashState createState() => _MusicSplashState();
}

class _MusicSplashState extends State<MusicSplash> {
 _loginScreen()
 {
   Navigator.pushReplacement(context,MaterialPageRoute(builder:(ctx)=>login()));
 }
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    double gap = deviceSize.height * 0.03;
    return Scaffold(
      body:SafeArea(
         child:Stack(
           //fit: StackFit.expand,
           children:[
           Container(
             width:deviceSize.width,
             height:deviceSize.height,
             decoration: BoxDecoration(
               gradient:LinearGradient(
                 colors:[
                   Colors.black,
                   Colors.green,
                   Colors.yellowAccent,
                   Colors.redAccent,
                   Colors.blue,
                 ],
                   begin:Alignment.topLeft,
                   end:Alignment.bottomRight,
               )
             ),

           ),
         Column(
             mainAxisAlignment: MainAxisAlignment.center,
           children:[
             Image.network(constants.SPLASH_IMG_URL,
              // fit: BoxFit.cover,
               height: deviceSize.height * 0.50,
               width: deviceSize.width,),
             SizedBox(
               height: gap,
             ),
             Container(
               alignment: Alignment.center,
               child: Text(
                 'Mvp Music App 2020',
                 style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
               ),
             ),
             SizedBox(
               height: gap,
             ),
             MaterialButton(
                 child:Text('START'),
                 elevation: 4,
                 splashColor: Colors.yellowAccent,
                 color: Colors.purpleAccent,
                 onPressed: () =>
                   _loginScreen()

                 )
           ]
         ),

           ],)
      )
    );
  }
}
