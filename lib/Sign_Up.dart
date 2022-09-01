
import 'package:flutter/material.dart';

import 'Home_Page.dart';




class SignUp extends StatefulWidget {

  //const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 6));
    _animation=CurvedAnimation(parent: _controller, curve: Curves.easeIn,);
    _controller.forward();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
  TextEditingController Password=TextEditingController();
  TextEditingController ConfirmedPassword=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          SafeArea(
            
            child: Container(
              
              height: 250,
              child: FadeTransition(
                opacity: _animation,
                child: Stack(
                  
                  children: [
                    Positioned(child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image:AssetImage("assest/1-Header1.jpg") ,
        fit: BoxFit.cover

                      ),
                    ),

                    ),
                    ),
                  ],
                ),
              ),
            ),
          ),
SizedBox(height: 20,),
   Padding(padding:EdgeInsets.symmetric(horizontal:12),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
Text(
  "Get on board",
  style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 35,
  ),
),
         SizedBox(height: 25,),
         Container(
           padding: EdgeInsets.all(8.0),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: Colors.transparent
           ),
child: FadeTransition(
  opacity: _animation,
  child:   Column(
    children: [
      Container(
       padding: EdgeInsets.all(8.0),
  decoration: BoxDecoration(
    border: Border(
      bottom: BorderSide(color: Colors.grey),
    )
  ),
        child: TextFormField(
  keyboardType:TextInputType.emailAddress,
  decoration: InputDecoration(
    prefixIcon: Icon(
      Icons.email_outlined
    ),
  border:InputBorder.none,
    hintText: "Email",
    helperStyle: TextStyle(
      color: Colors.purple
    )


  ),
        ),
      ),
      SizedBox(height: 5,),
      Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),

            )
        ),
        child: TextFormField(
          controller: Password,
          onFieldSubmitted: (val) {},
          validator: (value) {
            if(value!.isEmpty)
            {
              return "Please enter your password again";
            }
            else if(value!=Password.text)
            {
              return "Please Re-enter your password correctly";
            }
            return null;
          },
          keyboardType:TextInputType.visiblePassword,
          obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
            ),
            suffixIcon: Icon(
              Icons.visibility_rounded
            ),
              border: InputBorder.none,
              hintText: "Password",
              helperStyle: TextStyle(
                  color: Colors.purple
              )


          ),
        ),
      ),
      SizedBox(height: 5,),
      Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),

            )
        ),
        child: TextFormField(
          obscureText: true,
          controller: ConfirmedPassword,
          onFieldSubmitted: (val) {},
          validator: (value) {
            if(value!.isEmpty)
              {
                return "Please enter your password again";
              }
            else if(value!=Password.text)
              {
                return "Please Re-enter your password correctly";
              }
            return null;
          },
          keyboardType:TextInputType.visiblePassword,
          decoration: InputDecoration(

              prefixIcon: Icon(
                Icons.lock,
              ),
              suffixIcon: Icon(
                  Icons.visibility_rounded
              ),
              border: InputBorder.none,
              hintText: "Confirm password",
              helperStyle: TextStyle(

                  color: Colors.purple
              )


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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){return HomePage();}));
              }
              ,
              child: Text(
                "Sign up", style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),),
          ),
        ),
      ),
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account?", style: TextStyle(
              color: Color.fromRGBO(143, 145, 252, 1),
              fontWeight: FontWeight.bold
          ),
          ),
          MaterialButton(onPressed: () {Navigator.pop(context);}, child: Text("Log in"),)
        ],
      ),




    ],
  ),
),
         )
       ],
     ),
   )     ],
        
      ),
      
    );
  }
}