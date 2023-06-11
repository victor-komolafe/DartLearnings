// import 'dart:collection';

void main(){


  //types of data in dart
  // //note all data types are objects and have the defaul value of null
  // -numbers(int and double)
  // - String
  // - Booleans
  // -Lists(arrays)
  // -MapBase
  // - Runes(for expressing unicode characters in a Strng)
  // -Ssymbol
 
  int age = 23;
  print(age);
  var ages = 24;
  print(ages);
  var hexa = 0xDEFDAABE;  //where var can be used to infer data type
  print(hexa);
  var exponent = 1.24e4;
  print(exponent);

  //String interpolation
  String s1 = 'Single';
  String s2 = "Double"; //dart allows for multiple and single string
  String s3 = 'It\'s easy'; //uses backslash 
  String s4 = "It's easy";  //accepted
  
  //for strings and literals
  String interpolate = "This is a $s2"; //uses $

  print(interpolate);
  print("The number of digits in Double is ${s2.length}");  //note usage of curly braces only

  int l = 20;
  int b = 30;
  print("the area of $l and $b is ${l*b}");

  //Defining Constants; final and const keyword can be used
  //final varaible can only be set once and it is initialize only when accessed.
  //if  i.e never used in never instantiated(some what lazy)
  //const variable is implicitly final but is a compile-time constant 
  //i.e initialized during compilation
  //Instnace variable can be final but not const
  //hence if you want a const at class level then use "static const"
  final cityName = "Abuja";
  // cityName = "LAgos";cant be changed due to const
  final String countryName = "Nigeria";
  print(countryName);
  const PI = 3.14;
  const double gravity = 9.8;

  //CONTROL FLOW STATEMENTS
  //if and else
  //works based on if, else if and then else is executed if condition is met
  String ? name ; //? used to intialize var to null
  String nameToPrint = name ?? "Guest user";  //where ?? is used is value is null
  print(nameToPrint);

  // //LOOP CONTROL  
  // for(var i = 0; i<4; i++){
  //   print(i);
  // }
  // {
  // int i=1;
  // while(i<4){
  //   print(i);
  //   i++;
  // }
  // {
  //   do{
  //      print(i);
  //   i++;
  //   }
  //   while(i<2);
  // }
  // }
  //FOR in loop
  var planetList = {"Mecury", "Venus", "EArth", "Mars"};  //list of planets
  for(String planet in planetList){
    print(planet);
  }

  //nested for-loops and break and labels
  
  // myOuterLoop : for(int i=1;i<4;i++){ //where myOuterLoop is a label for the main for loop
  //   for(int j=1;j<4;j++){
  //      print("$i $j");
  //     if(i == 2 && j == 2){
  //       // break;  //where break exits loop . note: only applicable for nearest parent loop(i.e inner for loop in this case)
  //       //lables can be used for any/every for loops
  //       break myOuterLoop;  //breaks out of for loop using label
  //     }
  //   }
  // }

  //continue keyword skips code after continue is found and continues execution
  // for(int k=0; k<10;k++){
  //   if(k %2 == 0){
  //     continue; //skips all even numbers 
  //   }
  //   print(k);
  // }

  myOutLoop : for(int i=1;i<4;i++){ //where myOutLoop is a label for the main for loop
  myInLoop :for(int j=1;j<4;j++){//Where myInLoop is a label for nested loop
      if(i == 2 && j == 3){
        // break;  //where break exits loop . note: only applicable for nearest parent loop(i.e inner for loop in this case)
        //lables can be used for any for loops
        continue myOutLoop;  //skips value for "2 3" out of for loop using label
      }
      if(j == 2){
        continue myInLoop;  //skips everywhere j has a value of 2
      }
          print("$i $j");
    }
  }

//FUNCTIONS in DART
  //-functions in dart  are objects. hence functions can be assigned to variables or passed as paramtertes to other funcs
  //- all functions returns a value(if no return value specified then null is returned
  //-specidting retrun type is optional but is recommended as per code convention
  
    int findArea(int length, int breadth){
      int area = length *breadth;
      return area;  //return is oprtional but is good coding practice
      //if no return the null is defaulty returned
    }
    var k = findArea(10, 15);
    print("The area of k is $k");
  
//SHORT HAND SYNTAX for Expressikons in Functions

    
}