void main() {
  Map<String, int> cart = {};

 
  addToCart(cart, 'Strawberry', 2);
  addToCart(cart, 'Avocado', 3);
  addToCart(cart, 'Orange', 1);


  print('Cart Contents:');
  printCart(cart);

  
  double totalPrice = calculateTotalPrice(cart);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

 
  removeFromCart(cart, 'Avocado');


  print('Updated Cart Contents:');
  printCart(cart);

 
  totalPrice = calculateTotalPrice(cart);
  print('Updated Total Price: \$${totalPrice.toStringAsFixed(2)}');
}

void addToCart(Map<String, int> cart, String product, int quantity) {
  cart[product] = cart.containsKey(product) ? cart[product]! + quantity : quantity;
}

void removeFromCart(Map<String, int> cart, String product) {
  cart.remove(product);
}

double calculateTotalPrice(Map<String, int> cart) {
  const Map<String, double> prices = {
    'Strawberry': 0.5,
    'Avocado': 0.3,
    'Orange': 0.4,
  };

  double total = 0.0;
  cart.forEach((product, quantity) {
    if (prices.containsKey(product)) {
      total += prices[product]! * quantity;
    }
  });

  return total;
}

void printCart(Map<String, int> cart) {
  cart.forEach((product, quantity) {
    print('$product x $quantity');
  });
}