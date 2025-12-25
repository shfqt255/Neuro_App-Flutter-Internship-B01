// 1. Create User class with private _name, _email
class User {
  String _name;
  String _email;

  // 2. Add named constructor User.withDetails()
  User.withDetails({required String name, required String email})
    : _name = name,
      _email = email;

  @override
  String toString() {
    return 'User: name: $_name, email: $_email';
  }

  // 3. Implement getters and setters
  // 3. Getters
  String get name => _name;
  String get email => _email;

  // Setters
  set name(String name) {
    _name = name;
  }

  set email(String email) {
    _email = email;
  }
}

// 4. Create Admin class extending User
class Admin extends User {
  String _role;
  Admin(String name, String email, this._role)
    : super.withDetails(name: name, email: email);
  // 5. Override toString()
  @override
  String toString() {
    return 'Admin(name: $name, email: $email, role: $_role)';
  }
}

// 6. Create abstract class Animal
abstract class Animal {
  void makeSound();
}

// 7. Implement Dog and Cat classes
class dog extends Animal {
  @override
  // 8. Add abstract method makeSound()
  void makeSound() {
    print('Bow Bow');
  }
}

class cat extends Animal {
  @override
  void makeSound() {
    print('Meown');
  }
}

// 9. Create Product class with name, price
class Product {
  String name;
  double price;
  Product(this.name, this.price);
  @override
  String toString() {
    return 'name:$name, price:$price';
  }
}

// 10. Create ShoppingCart class managing List<Product>
class ShoppingCart {
  List<Product> shoppingCart = [];
  // 11. Implement addProduct(), removeProduct(), calculateTotal()
  void addProduct(Product product) {
    shoppingCart.add(product);
  }

  void removeProduct(Product product) {
    shoppingCart.remove(product);
  }

  double TotalPrice() {
    return shoppingCart.fold(0.0, (sum, item) => sum + item.price);
  }

  void show() {
    for (var items in shoppingCart) {
      print(items);
    }
  }
}

// 12. Test all functionality in main()
void main() {
  //user class object
  User user = User.withDetails(
    name: 'Shafqat Ullah',
    email: 'shfqt25@gmail.com',
  );
  print(user);
  //admin class object
  Admin admin = Admin(
    'Muhammad Hamza',
    'shfqt25@gmail.com',
    'Software Engineer',
  );
  print(admin);

// polymorphism of animals
  Animal Dog = dog();
  Dog.makeSound();
  Animal Cat = cat();
  Cat.makeSound();

// product
  Product p1 = Product('Pizza', 2000);
  Product p2 = Product('Pizza', 500);
  ShoppingCart cart = ShoppingCart();
  cart.addProduct(p1);
  cart.addProduct(p2);
  cart.show();
}

/*
Problems:
1. Create User class with private _name, _email
2. Add named constructor User.withDetails()
3. Implement getters and setters
4. Create Admin class extending User
5. Override toString() method
6. Create abstract class Animal
7. Implement Dog and Cat classes
8. Add abstract method makeSound()
9. Create Product class with name, price
10. Create ShoppingCart class managing List<Product>
11. Implement addProduct(), removeProduct(), calculateTotal()
12. Test all functionality in main() */


/*
Output:
PS E:\FLUTTER\NeuroApp_Week1_Tasks> dart run .\Object_Oriented_Programming\dart_oop.dart      
User: name: Shafqat Ullah, email: shfqt25@gmail.com
Admin(name: Muhammad Hamza, email: shfqt25@gmail.com, role: Software Engineer)
Bow Bow
Meown
name:Pizza, price:2000.0
name:Pizza, price:500.0 */
