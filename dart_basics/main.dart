  import 'dart:io';
void main() {
  // Q: 4. Demonstrate var, final, const declarations
  var name = 'Shafqat Ullah';
  name = '24';
  print(name); // 24
  final RollNo = 25;
  // RollNo = 33;   ERROR: "message": "The final variable 'RollNo' can only be set once.\nTry making 'RollNo' non-final."
  const min_cgpa_req = 2.5;
  /***
 min_cgpa_req = 34;
   ERROR:
   	"message": "Constant variables can't be assigned a value after initialization.
    \nTry removing the assignment, or remove the modifier 'const' from the variable.",**/
  print(min_cgpa_req);

  // Q: 5. Show int, double, String, bool data types
  int age = 22;
  //age = 22.3;  ERROR: a value of double cannot be assigned to int.
  double height = 2.5;
  // height = 3;  At runtime, height == 3.0
  bool isverified = false;

  // Q: 6. Implement if-else conditions
  if (age > 18) {
    isverified = true;
    print('You are elder');
  } else {
    print('You are Not elder');
  }


//7. Create for, while loops examples 
for(int i=0; i<5;i++){
  print(i); //The is for loop, and this statement will print first 0-4 numbers.
}

int i=1;
while(!(i==5)){
  print(i); 
  i++; //The is while loop, and this statement will also print 0-4 numbers
}
//int sum(int a, int b) call
print(sum(6, 8)); // 14

//factorial function call
print('Enter a number');
int? number =int.parse(stdin.readLineSync()!);
print((factorial(number)));

// prime number function call
print(prime(number));

}
//8. Write function int sum(int a, int b) 
int sum(int a, int b){
  return a+b;
}

//9. Create factorial function using recursion 
int factorial(int n){
  if(n==0 || n==1){
    return 1;
  }
  return n*factorial(n-1);
}

// 10. Implement isPrime() function 
String prime(int n){
  if(n==0 || n==1){
    return 'The number is not prime';
  }
  for(int i=2; i<=n; i++){

    if(n%i!=0){
     return 'The Number you entered is prime';
    }
  }
  return 'The number is not prime';
}
  
