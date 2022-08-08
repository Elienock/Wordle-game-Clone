import 'package:flutter/material.dart';

class WordleKey extends StatelessWidget {
  final String letter;
  const WordleKey(this.letter, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget keyCap ;
    if(letter =="_"){
      keyCap =  Icon(Icons.keyboard_return);
    }else if(letter == "<"){
      keyCap = Icon(Icons.backspace_outlined);
    }else{
      keyCap = Text(letter);
    }

    return Container(
      width: 40,
      height: 60,
      alignment: Alignment.center,
      //padding:EdgeInsets.all(10),
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
       color: Color.fromARGB(44, 44, 44, 44)
      ),
      child: keyCap,
    );
  }
}
