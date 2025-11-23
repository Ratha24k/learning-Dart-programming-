/*
switch statement evaluates an expression, matches the expression's value to a case clause,
and executes statements associated with that case. it executes the block of code where the case matches first.
if no case matches, the default case is executed.

syntax:
switch(expression) {
  case value1:
    // code block
    break;
  case value2:
    // code block
    break;
  ...
  default:
    // code block
}

example:

}

 */


import 'dart:convert';

enum EnumColor {red,green,yellow}
void main(List<String> args) {
  EnumColor  enumcolor = EnumColor.green;
  switch (enumcolor) {
    case EnumColor.green :{
      print('Go');
    }
    break;
    case EnumColor.red: {
      print("Stop");
    
    }
    break;
    case EnumColor.yellow:
    {
      print("Becareful");
    }
  }
  // final colorString = "Red";  // final == const

  // switch(colorString){
  //   case 'Red':{
  //     print("Stop");
  //   }
  //   break;
  //   case 'Green ':{
  //     print('Goo');

  //   }
  //   break;
  //   case 'yellow':{
  //     print("Becarefull");
  //   }
  //   break;
  //   default:{
  //     print("Invalid color");
  //   }
  // break;
  // }
  
}