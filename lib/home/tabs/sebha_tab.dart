import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Sebha extends StatefulWidget {
  Sebha({super.key});

  static const String routeName = 'sebha';

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter = 0;
  int index=0;
  double turns=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg3.png'),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              AnimatedRotation(
                duration: Duration(seconds: 1) ,
                turns:0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 170),
                  child:   Image.asset("assets/images/headOfSebha.png"),
                ),

                // child: Container(
                //   margin: EdgeInsets.only(top: 170),
                //   width: 200,
                //   height: 200,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: AssetImage("assets/images/body_of_sebha.png"))),
                // ),
              ),
              Image .asset("assets/images/body_of_sebha.png"),
              SizedBox(
                height: 40,
              ),
              Text(
                AppLocalizations.of(context)!.numOfpraises,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  turns+=0.1;
                  if(counter<30){
                    counter++;
                  }
                  else{
                    counter%=30;
                    index++;
                  }
                  if(index==4){
                    index%=4;
                  }

                  setState(() {

                  });
                },
                child: Text('${counter}'),
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  backgroundColor:MaterialStatePropertyAll(MyTheme.primary_color),
                  fixedSize: MaterialStatePropertyAll(Size(40, 71),),
                ),
              ),
              SizedBox(height: 60),
              Container(
                width: 137,
                height: 41,

                decoration: BoxDecoration(
                    color: MyTheme.primary_color,
                    borderRadius: BorderRadius.circular(20)
                ),
                child:Center(
                  child: Text("${tsbehat[index]}",
                    style: GoogleFonts.elMessiri(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
  List tsbehat=[
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر"

  ];
}

// void main() {
//
//
// }
//
// abstract class Message implements wayOfSendingMessage{
//   wayOfSendingMessage? way;
//   String? subject;
//   String? body;
//   void send();
// }
// class wayOfSendingMessage{
//
// }
//
// class System extends Message{
//   void send(){
//
//   }
// }
