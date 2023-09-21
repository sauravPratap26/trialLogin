import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginmod extends StatefulWidget{
  const Loginmod({super.key});

  @override
  State<Loginmod> createState() {
    return _LoginmodState();
  }
}
class _LoginmodState extends State <Loginmod> {

  bool isVisible= false;
  var phoneNo=TextEditingController();
  var otp=TextEditingController();

  @override
  Widget build( context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return  SafeArea(

          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: screenWidth*0.1,
                    right: screenWidth*0.1,
                    top: screenHeight*0.150
                  ),
                  width: screenWidth*0.8,
                  height: screenHeight*0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/neodisha.jpeg"),
                    ),
                    //border: Border.all(color: Colors.red)
                  ),
                ),

                Container(
                  decoration: const BoxDecoration(
                   // border: Border.all(color: Colors.greenAccent)
                  ),
                  margin: EdgeInsets.only(
                      left: screenWidth*0.125,
                      right: screenWidth*0.125,
                      top: screenHeight*0.450
                  ),
                  width: screenWidth*0.75,
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




                // Visibility(
                //   visible: isVisible,
                  //child:
                  Visibility(
                    visible: isVisible,

                    child: Container(

                      decoration: BoxDecoration(
                   //       border: Border.all(color: Colors.yellow)
                      ),
                      margin: EdgeInsets.only(
                          left: screenWidth*0.125,
                          right: screenWidth*0.125,
                          top: screenHeight*0.550
                      ),
                      width: screenWidth*0.75,
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
                  ),
                // ),
                if (isVisible==true)
                Container(

                  decoration: BoxDecoration(
           //           border: Border.all(color: Colors.greenAccent)
                  ),

                  margin: EdgeInsets.only(
                      left: screenWidth*0.125,
                      right: screenWidth*0.125,
                      top: screenHeight*0.650
                  ),
                  width: screenWidth*0.75,
                  child: InkWell( onTap: ()=> setState(() { isVisible=true; } ),
                    borderRadius:BorderRadius.circular(50),
                    splashColor: Colors.red.withOpacity(0.3),
                    child: Ink(height: 65,

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
                  ),
                )

                else
                  Container(

                    decoration: BoxDecoration(
                      //           border: Border.all(color: Colors.greenAccent)
                    ),

                    margin: EdgeInsets.only(
                        left: screenWidth*0.125,
                        right: screenWidth*0.125,
                        top: screenHeight*0.550
                    ),
                    width: screenWidth*0.75,
                    child: InkWell( onTap: ()=> setState(() { isVisible=true; } ),
                      borderRadius:BorderRadius.circular(50),
                      splashColor: Colors.red.withOpacity(0.3),
                      child: Ink(height: 65,

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
                    ),
                  )


              ],
            ),
          )
    );

  }

}