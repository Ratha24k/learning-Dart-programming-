/*
loop is control flow structure that you can excurte a block of code multiple times as long as a specified condition is true.
dart provides several types of loops, including for, while, and do-while loops;
here is the syntax for each type of loop:
1. for loop:
for (initialization; condition; increment/decrement) {
  // code block to be executed
}
eg: for (int i = 0; i < 5; i++) {
  print(i);
}

2. for-in loop:
for (var item in collection) {
  // code block to be executed  
}
eg: for (var color in colors) {
  print(color);
}
3. while loop:
while (condition) {
  // code block to be executed 
}
eg: int i = 0;
while (i < 5) {
  print(i);
  i++;
}
4. do-while loop:
do {
  // code block to be executed
} while (condition);
eg: int i = 0;
do {
  print(i);
  i++;
} while (i < 5);

control satement of loop is 
_break statement: it is used to exit a loop or switch statement prematurely when a certain condition is met.
_continue statement == skip : it is used to skip the current iteration of a loop and move to the next iteration.


 */

 void main(List<String> args) {

  //for looo
  
  for (int i = 0; i < 5; i++) {
   
   print("number ${i}");
 }

 // for in

 var fruits = ["apple","banana","papaya"];

 for (var fruit in fruits) {
  print(fruit);
 }

 //while loop
  int countDown = 3;
  while (countDown > 0) {
   print("Count Down: ${countDown}");
   countDown --;
  }

//do-while

  int countUp = 1;
  do {
   print("Count Up: ${countUp}");
   countUp ++;
  } while (countUp <= 3);




 

  
 
}