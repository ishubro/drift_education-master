import 'package:drift_education/screens/homeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:drift_education/widgets/CustomTextField.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => new _SignInState();
}

 class _SignInState extends State<SignIn> {

   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   String _email, _password;

   @override
   Widget build(BuildContext context) {
     return new Scaffold(
       appBar: AppBar(
         // title: Text('Login'),
         elevation: 0,
         leading: IconButton(
           icon: Icon(Icons.arrow_back_ios),
           onPressed: () {
             Navigator.of(context).pop();
           },
         ),
       ),
       body: SingleChildScrollView(
         child: Center(
           child: Form(
               key: _formKey,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: <Widget>[
                   Text("Welcome to Drift Education",textAlign: TextAlign.center,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                   SizedBox(height: 40.0,),
                   Image.asset(
                     'images/SignInImage.png',
                     height: 130,
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   CustomTextField(hintText: 'Username',validator: (input) {
                     if(input.isEmpty){
                       return 'Provide an email';
                     }
                   },
                   onSaved:  (input) => _email = input,obscureText: false,),
                   SizedBox(height: 20.0,),
                   CustomTextField(validator: (input) {
                     if(input.length < 6){
                       return 'Longer password please';
                     }
                   },
                   hintText: 'Password',onSaved: (input) => _password = input,obscureText: true,),
                   SizedBox(
                     height: 20.0,
                   ),
                   RaisedButton(
                     onPressed: signIn,
                     child: Text('Sign in',style: TextStyle(color: Colors.white),),
                     color: Colors.blue,
                     padding: const EdgeInsets.all(20.0),
                     shape: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.blue, width: 2),
                       borderRadius: BorderRadius.circular(23),
                     ),
                   ),
                   SizedBox(
                     height: 5.0,
                   ),
                   MaterialButton(
                     onPressed: () {
                       Navigator.pushNamed(context, '/signup');
                     },
                     child: Text("Sign Up"),
                   ),
                 ],
               )

           ),
         ),
       ),
     );
   }


   void signIn() async {
     if(_formKey.currentState.validate()){
       _formKey.currentState.save();
       try{
         FirebaseUser user = (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)).user;
         Navigator.push(context,
           MaterialPageRoute(builder: (context) =>HomeScreen()),);
       }catch(e){
         print(e.message);
       }
     }
   }
 }

