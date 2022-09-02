import 'dart:io';

//Product blueprint
class Product {
  String prodName = "";
  String prodPrice = "";
  String expiryDate = "";
}

//Driver code
main() {
  //products
  var prod1 = Product();
  prod1.prodName = "Indomie";
  prod1.prodPrice = "N10,000";
  prod1.expiryDate = "10/12/2024";

  var prod2 = Product();
  prod2.prodName = "Spaghettiy";
  prod2.prodPrice = "N5,000";
  prod2.expiryDate = "07/06/2023";

  var prod3 = Product();
  prod3.prodName = "Oath and Milk";
  prod3.prodPrice = "N8,000";
  prod3.expiryDate = "02/08/2024";

  var allProducts = [prod1.prodName, prod2.prodName, prod3.prodName];

  // buying a product
  void buyProduct(var customerName) {
    print("======================================");
    print(
        "$customerName before buying a product from us please view all our available products");
    print(allProducts);
    print("======================================");
    print(
        "$customerName what would you like to buy, please write only the product name correctly");
    stdout.write("Product Name: ");
    var productName = stdin.readLineSync()!;
    stdout.write("Quantity: ");
    int quantity = int.parse(stdin.readLineSync()!);
    if ((productName == prod1.prodName) ||
        (productName == prod2.prodName) ||
        (productName == prod3.prodName)) {
      print("=====================================");
      print("Market Square");
      print("Opolo, Yenagoa, Bayelsa State.");
      print("$customerName bought");
      if (productName == prod1.prodName) {
        print("Product Name: ${prod1.prodName}");
        print("Product Price: ${prod1.prodPrice}");
        print("Expiry Date: ${prod1.expiryDate}");
        print("Quantity: $quantity");
        print("Total payment = ${quantity * 10000}");
      } else if (productName == prod2.prodName) {
        print("Product Name: ${prod2.prodName}");
        print("Product Price: ${prod2.prodPrice}");
        print("Expiry Date: ${prod2.expiryDate}");
        print("Quantity: $quantity");
        print("Total payment = ${quantity * 5000}");
      } else {
        print("Product Name: ${prod3.prodName}");
        print("Product Price: ${prod3.prodPrice}");
        print("Expiry Date: ${prod3.expiryDate}");
        print("Quantity: $quantity");
        print("Total payment = ${quantity * 8000}");
      }
      print("Thanks, we would like to meet you again.");
    } else {
      print(
          "Please compare the available products and your entry and re-enter a correct product name");
    }
  }

  // customer
  void customer(var customerName) {
    int userInput3;
    do {
      print("======================================");
      print("Hello, $customerName what would you like to do?");
      print("1. View all our available products");
      print("2. Buy a Product");
      print("3. Previous menu");
      print("4. Exit");
      userInput3 = int.parse(stdin.readLineSync()!);
      switch (userInput3) {
        case 1:
          // All available products
          print("======================================");
          print("ALL AVAILABLE PRODUCTS");
          print("");
          print("S/N  PRODUCT NAME       PRICE       EXPIRY DATE");
          print(
              "1.   ${prod1.prodName}            ${prod1.prodPrice}     ${prod1.expiryDate}");
          print(
              "2.   ${prod2.prodName}         ${prod2.prodPrice}      ${prod2.expiryDate}");
          print(
              "3.   ${prod3.prodName}      ${prod3.prodPrice}      ${prod3.expiryDate}");
          break;
        case 2:
          buyProduct(customerName);
          break;
        case 3:
          // previous menu
          break;
        case 4:
          print("======================================");
          print("There is no exit at the moment");
          break;
        default:
          print("======================================");
          print("Invalid entry");
      }
    } while (userInput3 != 3);
  }

  // admin
  int userInput2;
  void admin() {
    print("======================================");
    do {
      print("What would you like to do?");
      print("1. See all available products");
      print("2. Add a product");
      print("3. Previous menu");
      print("4. Exit");
      userInput2 = int.parse(stdin.readLineSync()!);
      switch (userInput2) {
        case 1:
          // All available products
          print("======================================");
          print("ALL AVAILABLE PRODUCTS ");
          print("");
          print("S/N  PRODUCT NAME       PRICE       EXPIRY DATE");
          print(
              "1.   ${prod1.prodName}            ${prod1.prodPrice}     ${prod1.expiryDate}");
          print(
              "2.   ${prod2.prodName}         ${prod2.prodPrice}      ${prod2.expiryDate}");
          print(
              "3.   ${prod3.prodName}      ${prod3.prodPrice}      ${prod3.expiryDate}");
          print("======================================");
          break;
        case 2:
          // Add a product
          var newProd = Product();
          stdout.write("Product Name: ");
          newProd.prodName = stdin.readLineSync()!;
          stdout.write("Product Price: ");
          newProd.prodPrice = stdin.readLineSync()!;
          stdout.write("Product Expiry Date: ");
          newProd.expiryDate = stdin.readLineSync()!;
          print("========================================");
          print("You added a new product");
          print("========================================");
          print("S/N  PRODUCT NAME       PRICE       EXPIRY DATE");
          print("---------------");
          print("Newest Products");
          print("---------------");
          print(
              "1.   ${newProd.prodName}            ${newProd.prodPrice}          ${newProd.expiryDate}");
          print("---------------");
          print("Old products");
          print("---------------");
          print(
              "2.   ${prod1.prodName}            ${prod1.prodPrice}     ${prod1.expiryDate}");
          print(
              "3.   ${prod2.prodName}         ${prod2.prodPrice}      ${prod2.expiryDate}");
          print(
              "4.   ${prod3.prodName}      ${prod3.prodPrice}      ${prod3.expiryDate}");
          print("======================================");
          break;
        case 3:
          // Previous menu
          break;
        case 4:
          // Exit
          print("======================================");
          print("There is no exit at the moment");
          break;
        default:
          print("======================================");
          print("Invalid entry");
      }
    } while (userInput2 != 3);
  }

  // General Supermarket
  print("================================================");
  print("Welcome to Market Square");
  print("Opolo, Yenagoa, Bayelsa State.");
  print("Are you an admin or a customer");
  int userInput;
  do {
    print("1. Admin");
    print("2. Customer");
    print("3. Exit");
    userInput = int.parse(stdin.readLineSync()!);
    switch (userInput) {
      case 1:
        // admin class
        print("======================================");
        print("Please type default admin password :");
        var adminDefault = stdin.readLineSync()!;
        while (adminDefault != "0000") {
          print("======================================");
          print("*Incorrect, please re-type correct default admin password");
          adminDefault = stdin.readLineSync()!;
        }
        if (adminDefault == "0000") {
          admin();
        }
        break;
      case 2:
        // customer class
        print("Customer's Name : ");
        var customerName = stdin.readLineSync();
        customer(customerName);
        break;
      case 3:
        print("Goodbye, we would like to meet you again.");
        break;
      default:
        print("Please type a valid input");
        break;
    }
  } while (userInput != 3);
}
