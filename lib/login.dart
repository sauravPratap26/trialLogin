import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<Login> createState() {
    return _Login();
  }

}

class _Login extends State<Login>{

  var phoneNo=TextEditingController();
  var otp=TextEditingController();
  bool isVisible= false;
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    var leftpos = screenwidth * 0.2;
    var toppos = screenheight * 0.11;

    if (screenwidth / screenheight <= 0.5) {
      leftpos = screenwidth * 0.1;
      toppos = screenheight * 0.20;
    }
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100,),
            Center(
              child: SizedBox(
                width: 300,
                child:Image.asset("assets/images/reliance-trends-crop-png.png" ),
              ),
            ),
            const SizedBox(height: 100,),
            SizedBox(
              width: 300,
              child: TextFormField(
                maxLength: 10,
                controller: phoneNo ,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: const BorderSide(
                            color: Color(-16727608),
                            width:2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide:  const BorderSide(
                            color: Color(-16740356),
                            width: 2
                        )
                    ),
                    prefixIcon: const Icon( Icons.phone, color: Color(-16727608),),
                    hintText: "Phone Number",
                  hintStyle: const TextStyle(color: Color(-3668224)),
                  labelText: "Number",
                  contentPadding: const EdgeInsets.all(20)

                ),
              ),//this text form field is accepting the phone number from the user
            ),
            const SizedBox(height: 15,),



        Visibility(
          visible: isVisible,
          child: SizedBox(
            width: 300,
            child: TextFormField(
              maxLength: 6,
              controller: otp ,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: const BorderSide(
                          color: Color(-16727608),
                          width:2
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide:  const BorderSide(
                          color: Color(-16740356),
                          width: 2
                      )
                  ),
                  prefixIcon: const Icon( Icons.lock_clock, color: Color(-16727608),),
                  //hintText: "Phone Number",
                  hintStyle: const TextStyle(color: Color(-3668224)),
                  labelText: "OTP",
                  contentPadding: const EdgeInsets.all(20)

              ),
            ),
          ),
        ), //this here takes the otp, it is currently invisible and gets visible only when the button is pressed

            const SizedBox(height: 15,),

            // ElevatedButton(onPressed: ()=> setState(() {
            //   isVisible=true; }),
            //   style: ElevatedButton.styleFrom(
            //     padding: EdgeInsets.symmetric(
            //       horizontal: 40,
            //         vertical:10
            //     ),
            //     fixedSize: Size(240, 55),
            //     backgroundColor: Color(-16727608),
            //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
            //
            //   ),
            //
            //     child: Text("CONTINUE",style: GoogleFonts.lato(
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold,
            //         fontSize: 18
            //     ),
            //     ),
            // ),   //this elevated button does not contain the necessary gradient and the splash so commenting it out
            //used inkwell for the gradient and red splash
             InkWell( onTap: ()=> setState(() { isVisible=true; } ),
              borderRadius:BorderRadius.circular(50),
              splashColor: Colors.red.withOpacity(0.3),
              child: Ink(height: 65,width: 240,

              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [Color(-16734288), Color(-8660004)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                ),
              ),
                child: Center(
                  child: Text("CONTINUE",style: GoogleFonts.lato(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),textAlign: TextAlign.center,

                  ),
                ),
              ),
            )

          ],
        ),
      ),

    );
  }

}