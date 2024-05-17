class ShoppingCart {
    private val items = mutableMapOf<String, Double>()

    fun addItem(itemName: String, price: Double) {
        if (items.containsKey(itemName)) {
            val currentPrice = items[itemName]!!
            items[itemName] = currentPrice + price
        } else {
            items[itemName] = price
        }
    }

    fun removeItem(itemName: String) {
        items.remove(itemName)
    }

    fun calculateTotalPrice(): Double {
        var totalPrice = 0.0
        for ((_, price) in items) {
            totalPrice += price
        }
        return totalPrice
    }
}

fun main() {
    val cart = ShoppingCart()

    cart.addItem("Item 1", 10.0)
    cart.addItem("Item 2", 15.0)
    cart.addItem("Item 1", 5.0) // Adding more quantity of Item 1
    cart.removeItem("Item 2")

    val totalPrice = cart.calculateTotalPrice()
    println("Total price: $totalPrice")
}