/*
   controll flow statement allow you to manage ther oder in witch your program's code in executed.
   the most fundamental desision-making tool is the if statement . it executes a block of code conditionally,
    based on the value of a boolean expression.
   */
/*
  if (condition) {
    // run if condition is true
  } else {
    // run if condition is false
   */

/* 
  logic operators
  &&  : and runs when both condition are true
  eg.
   if (condition1 && condition2) {
    // run if both condition1 and condition2 are true
   }

  ||  : or runs when at least one condition is true
  eg.
   if (condition1 || condition2) {
    // run if either condition1 or condition2 is true
   }

  !   : not reverses the boolean value
  eg.
   if (!condition) {
    // run if condition is false
   }

   */

import 'dart:io';

void main(List<String> args) {
  int ageInputArgs;
  stdout.write("Input your age: ");
  String? ageInputString = stdin.readLineSync();
  if (ageInputString == null) {
    throw Exception("Input must be not null");
  }
  ageInputArgs = int.parse(ageInputString);
  if (ageInputArgs >= 18) {
    print("You are eligible to vote");
  } else {
    print("You are not eligible to vote yet");
  }
}

