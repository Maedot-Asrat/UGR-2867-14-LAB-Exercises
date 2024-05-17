fun calculateFactorial(number: Int): Long {
    return if (number == 0 || number == 1) {
        1
    } else {
        number * calculateFactorial(number - 1)
    }
}

fun main() {
    val number = 5
    val factorial = calculateFactorial(number)
    println("Factorial of $number is $factorial")
}