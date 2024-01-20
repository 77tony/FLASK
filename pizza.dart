import 'dart:io'; 
void main() { 
print("Pizza prices: Small - 150 Rs, Medium - 190 Rs, Large - 240 Rs"); 
print("Please enter your pizza size (Small, Medium, Large):"); 
String pizzaSize = stdin.readLineSync()!; 
print("How many pizzas do you want in $pizzaSize?"); 
int pizzaQty = int.parse(stdin.readLineSync()!); 
var priceMap = {'Small': 150, 'Medium': 190, 'Large': 240}; 
if (priceMap.containsKey(pizzaSize)) { 
var result = pizzaQty * priceMap[pizzaSize]!; 
print("Your Total Payment is: $result Rs"); 
} else { 
print("Invalid Pizza Size Input"); 
} 
}