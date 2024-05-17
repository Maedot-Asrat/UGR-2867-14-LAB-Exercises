fun findLargestNumber(num1: Int, num2: Int, num3: Int): Int {
    var largest = num1

    if (num2 > largest) {
        largest = num2
    }

    if (num3 > largest) {
        largest = num3
    }

    return largest
}

fun main() {
    val num1 = 10
    val num2 = 25
    val num3 = 15

    val largestNumber = findLargestNumber(num1, num2, num3)
    println("The largest number is $largestNumber.")
}