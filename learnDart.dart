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

  //LOOP CONTROL  
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
  var planetList = {"Mecury", "Venus", "EArth", "Mars"}; 
  //set - use curly brackets and is used for storing unique elements. no two replicates possible
   //Set of planets
  //we can add different data types into our list
  //we have different methods to use with our list.e.g
  planetList.add("Jupitar");
  for(String planet in planetList){
    print(planet);
  }

  //  var names = ['tom','jerry','jane'];  //list - use square brackets 
 
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
  
    // int findArea(int length, int breadth){
    //   int area = length *breadth;
    //   return area;  //return is oprtional but is good coding practice
    //   //if no return the null is defaulty returned
    // }
    //Dart supports arrow functions
    int findArea(int length, int breadth) => length * breadth;
    

    var k = findArea(10, 15);
    print("The area of k is $k"); 
  
//SHORT HAND SYNTAX for Expressikons in Functions



   //ENUMERATIONS; these are names/list of related items such that each value becomes an identity
    //Enum
    print(PersonProperties.values);  //prints out values in enum
    const  jName = PersonProperties.lName ;
    test2(jName);
    const kName = PersonProperties.fName;
    test2(kName);

    
   //CLASSES - uses keyword 'class'

//Classes in Dart 
 Person Victor = Person("victor");
 Victor.breath(); 

 //NULL Safety '?' - used to check for null values 
    List<String?>? scores = [null,"30",'40',"50",null];
    //where ? before String denotes list can contain value with datatype of null 
    //and ? after > denotes list socres can contain null value. i.e no value at all
    //note objects that contain null values are said to  contain optional values

    //we can cherry-pick non null values . uses '??'  to crosscheck over null values. note:its an infix operator. 
    //receives the first non-null value or prints null if none
    const String? firstName = null;
    const String? middleName = 'jili';
    const String? lastName = 'tom';

    String? nonNullName = firstName ??middleName ?? lastName; 
    print(nonNullName);//outputs jili due to jili being the first non null value

    //we can use the Null-aware adingent operator to select a particular value for an something that is optional
    nonNullName = firstName;
    print(nonNullName); //outputs null
    nonNullName??=lastName; //assins lastName to nonNullname if nonNullname is null
    print(nonNullName);//outputs tom


    //Conditional invocation; to find properties of nullable objects. uses '?.' keyword
    var names = [null,'jerry','jane'];  //list

    void test(List<String?>? names){
      // if(names != null){ //old way of handling optional type error below
      //   final numberOfNames = names.length; //gives error without if sttament above because string can receive null values
      // }else{
      //   final numberOfNames = 0;
      // }
      //final length = names?.length ?? 0 ; //i.e if names is has optional values then get length propertie;
      print('the string $names has ${names?.length ?? 0} length');//where if names is null itself then length is set to zero
      //e.g
      names = null;
      print('the string $names now has ${names?.length ?? 0} length');

    }
    test(names);
}

enum PersonProperties{ fName, lName, age}
    //can use switch cases in enum 
  void test2(PersonProperties p){
  switch (p){
            case PersonProperties.fName:
              print('firstname');
              break;
            case PersonProperties.lName:
              print('lastname');
              break;
            case PersonProperties.age:
              print('age');
              break;
            default:
              print(p);
        }
 }


 class Person{ 
  final String name;
  Person(this.name); //constructor for string name above

  
  void run(){ //method of class
    print('running');
  }

  void breath(){
    print('breathing');
  }
  
 }
 //Inheritance; uses keyword extends
 class Person1 extends Person{  //note every class always extends from Object class
  Person1(super.name); //references superclasses variables
  void getName(){
    print(name);
  }
}
//abstract classes can be instantaited using abstract keyword. (note: cant be instantiated)
//Factory constructors can be used to when you dont necessarily want a constructor to create a new instances of a class