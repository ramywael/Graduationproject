

import 'package:flutter/material.dart';
import 'package:graduationproject/Home_Page.dart';
import 'package:graduationproject/Phone.dart';
import 'package:graduationproject/Sign_Up.dart';
import 'package:lottie/lottie.dart';

// class Login extends StatelessWidget {
//   //const Login({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Log in"),
//
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(bottom: 10,top: 20),
//           child: Column(
//
//             children: [
//
//               Center(child: Lottie.asset("assest/26436-login-circle.json"),),
//               SizedBox(height: 10,),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color.fromRGBO(143, 145, 252, .7),
//                       blurRadius: 20,
//                       offset:Offset(0, 10),
//                       blurStyle: BlurStyle.normal,
//
//                     )
//                   ],
//                   border:Border(bottom: BorderSide(color: Colors.grey,))
//
//                 ),
//
//                 child: TextFormField(
// keyboardType:TextInputType.emailAddress ,
//                   decoration: InputDecoration(
//
//                     labelText: "Email-Address or phone",
//                     hintStyle: TextStyle(color: Colors.grey[480]),
//                     prefixIcon: Icon(
//                       Icons.email_outlined
//                     ),
//                     border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))
//
//
//                   ),
//                 ),
//
//               ),
//
//
//             ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Container(
//
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           color: Color.fromRGBO(143, 145, 252, .7),
//                           blurRadius: 20,
//                           offset:Offset(0, 10),
//                           blurStyle: BlurStyle.normal,
//
//                         )
//                       ],
//                       border:Border(bottom: BorderSide(color: Colors.grey,))
//
//                   ),
//
//                   child: TextFormField(
//                     keyboardType:TextInputType.emailAddress ,
//                     decoration: InputDecoration(
//
//                         labelText: "Email-Address or phone",
//                         hintStyle: TextStyle(color: Colors.grey[480]),
//                         prefixIcon: Icon(
//                             Icons.email_outlined
//                         ),
//                         border:OutlineInputBorder(borderRadius: BorderRadius.circular(10))
//
//
//                     ),
//                   ),
//
//                 ),
//
//
//               ),
//               SizedBox(height: 10,),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Container(
//
//                   height: 45,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     gradient: LinearGradient(colors: [Color.fromRGBO(143, 145, 252, 1),
//                       Color.fromRGBO(143, 145, 252, .6),
//                     ]
//                     )
//
//                   ),
// child: Container(
//   width: double.infinity,
//   child:   MaterialButton
//     (onPressed: () {}
//     ,child:Text("Log in",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white
//     ),) ,),
// ),
//                 ),
//               ),
// SizedBox(height: 5,),
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
// Text(
//   "Don\"t have an account ?" ,style: TextStyle(
//   color: Color.fromRGBO(143, 145, 252, 1),
//   fontWeight: FontWeight.bold
// ),
// ),
//     MaterialButton(onPressed: () {},child: Text("Register now"),)
//   ],
// ),
//               MaterialButton(onPressed: () {}, child: Text("Forgot password?",style: TextStyle(color: Color.fromRGBO(143, 145, 252, 1),fontWeight: FontWeight.bold),),)
//             ],
//           ),
//
//         ),
//       ),
//     );
//   }
// },






class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin{
    late AnimationController _controller;
    late Animation<double> _animation;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 15));
    _animation=CurvedAnimation(parent: _controller, curve: Curves.slowMiddle,);
    _controller.forward();

  }
@override
  void dispose() {
    // TODO: implement dispose
  _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
        backgroundColor: Colors.deepPurple,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10, top: 20),

          child: Column(




              children: [

                Center(child: Lottie.asset("assest/RKXbGHkn1w.json"),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FadeTransition(
                    opacity: _animation,
                    child: Container(

                      decoration: BoxDecoration(

                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 145, 252, .7),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                              blurStyle: BlurStyle.normal,

                            )
                          ],
                          border: Border(bottom: BorderSide(color: Colors.grey,))


                      ),

                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(

                            labelText: "Email-Address or phone",
                            hintStyle: TextStyle(color: Colors.grey[480]),
                            prefixIcon: Icon(
                                Icons.email_outlined
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))



                        ),
                      ),

                    ),
                  ),


                ),
                FadeTransition(
                  opacity: _animation,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(

                      decoration: BoxDecoration(

                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 145, 252, .7),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                              blurStyle: BlurStyle.normal,

                            )
                          ],
                          border: Border(bottom: BorderSide(color: Colors.grey,))

                      ),

                      child: TextFormField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(

                            labelText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[480]),
                            prefixIcon: Icon(
                                Icons.lock
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye_sharp
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))


                        ),
                      ),

                    ),


                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Color.fromRGBO(143, 145, 252, 1),
                              Color.fromRGBO(143, 145, 252, .6),
                            ]
                        )

                    ),
                    child: Container(
                      width: double.infinity,
                      child: MaterialButton
                        (
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return HomePage();}));}
                        ,
                        child: Text(
                          "Log in", style: TextStyle(fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don\"t have an account ?", style: TextStyle(
                        color: Color.fromRGBO(143, 145, 252, 1),
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    MaterialButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return SignUp();}));}, child: Text("Register now"),)
                  ],
                ),
                MaterialButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context){return MyPhone();}));},
                  child: Text("Forgot password?", style: TextStyle(
                      color: Color.fromRGBO(143, 145, 252, 1),
                      fontWeight: FontWeight.bold),),)
              ],
            ),
          ),

        ),
      );

  }
}





