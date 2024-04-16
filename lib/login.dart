import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 39, 49, 1),
      body: Center(
        child: Container(
          // color: Colors.purple,
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(8, 60, 93, 1)
          ),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login",style: GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.white, fontSize: 20)),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                            decoration: const InputDecoration(
                            hintText: 'Enter your Username',
                            hintStyle: TextStyle(color: Colors.white)
                                        ),
                                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                                        },
                                      ),  
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),),
                    TextFormField(
                            decoration: const InputDecoration(
                            hintText: 'Enter your Password',
                            hintStyle: TextStyle(color: Colors.white)
                                        ),
                                        validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                                        },
                                      ), 
                    Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),),
                    ElevatedButton(
                            onPressed: () {
                              // Validate will return true if the form is valid, or false if
                              // the form is invalid.
                              
                            },
                            child:  Text('Submit', style: GoogleFonts.pacifico(textStyle: TextStyle(color: Color.fromRGBO(8, 60, 93, 1)),),)
                    ), 
                    SizedBox(height: 5,),
                    TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Signup()),
                        );
                      },
                      child: Text("Don't have Account? click here",style: GoogleFonts.pacifico(textStyle: TextStyle(color: Colors.white, fontSize: 14)),)
                    )
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}